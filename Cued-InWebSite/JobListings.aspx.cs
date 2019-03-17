using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

//Nothing

public partial class JobListings : System.Web.UI.Page
{
    int i = 0;
    System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["DBConnectionString"].ToString());

    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            Job_Calendar.Visible = false;

        }
    }

    protected void Cal_Button_Click(object sender, ImageClickEventArgs e)
    {
        if(Job_Calendar.Visible == false)
        {
            Job_Calendar.Visible = true;
        }
        else
        {
            Job_Calendar.Visible = false;
        }
    }


    protected void Job_Calendar_SelectionChanged(object sender, EventArgs e)
    {
        TxtCalendar.Text = Job_Calendar.SelectedDate.ToShortDateString();
        Job_Calendar.Visible = false;
    }

    protected void Btn_Exit_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.close();</script>");
    }

    protected void Btn_Save_Click(object sender, EventArgs e)
    {
        Job tempJob = new Job(txt_Name.Text, txt_Street.Text, txt_City.Text, State_DropDown.SelectedValue, ListBox_Counties.SelectedValue, txt_Zip.Text,
            ListBox_School.SelectedValue, Type_DropDown.SelectedValue, Cluster_DropDown.SelectedValue, Occupation_DropDown.SelectedValue,
            DateTime.Parse(TxtCalendar.Text), Txt_Link.Text, Txt_Description.Text, DropDownList_Status.SelectedValue);
        sc.Open();
        for (int i = 0; i < ListBox_Counties.Items.Count; i++)
        {
            if (ListBox_Counties.Items[i].Selected)
            {

                //insert into listing
                // select EmployerID from employer where @Email = email;
                String qry = "INSERT INTO [dbo].[Listing] VALUES((select max(EmployerID) from [dbo].[Employer]), @Name, @TypeofListing, @Street, @City, @State, @County, @Zip, @date, @status)";
                System.Data.SqlClient.SqlCommand sqlListing = new System.Data.SqlClient.SqlCommand(qry, sc);
                sqlListing.Connection = sc;
                
                sqlListing.Parameters.AddWithValue("@Name", tempJob.getjobName());
                sqlListing.Parameters.AddWithValue("@TypeOfListing", "JobListing");
                sqlListing.Parameters.AddWithValue("@Street", tempJob.getStreet());
                sqlListing.Parameters.AddWithValue("@City", tempJob.getCity());
                sqlListing.Parameters.AddWithValue("@State", tempJob.getState());
                sqlListing.Parameters.AddWithValue("@County", ListBox_Counties.Items[i].Value);
                sqlListing.Parameters.AddWithValue("@Zip", tempJob.getZip());
                sqlListing.Parameters.AddWithValue("@date", DateTime.Today);
                sqlListing.Parameters.AddWithValue("@status", tempJob.getStatus());
                
                sqlListing.ExecuteNonQuery();
            }
        }

        //get max id
        System.Data.SqlClient.SqlCommand sqlcom1 = new System.Data.SqlClient.SqlCommand();
        sqlcom1.Connection = sc;
        sqlcom1.CommandText = "select max(ListingID) from [dbo].[Listing]";
        int maxID = Convert.ToInt32(sqlcom1.ExecuteScalar());
        //maxID++;
        sqlcom1.ExecuteNonQuery();

        //create job listing
        for (int i = 0; i < ListBox_School.Items.Count; i++)
        {
            if (ListBox_School.Items[i].Selected)
            {
                String qry3 = "INSERT INTO [dbo].[JobListing] VALUES(" + maxID + ",@School, @Type, @Cluster, @Occupation, @Deadline, @Link, @Description)";
                System.Data.SqlClient.SqlCommand sqlcom = new System.Data.SqlClient.SqlCommand(qry3, sc);
                sqlcom.Connection = sc;
                sqlcom.Parameters.AddWithValue("@School", ListBox_School.Items[i].Value);
                sqlcom.Parameters.AddWithValue("@Type", tempJob.getJobType());
                sqlcom.Parameters.AddWithValue("@Cluster", tempJob.getCluster());
                sqlcom.Parameters.AddWithValue("@Occupation", tempJob.getOccupation());
                sqlcom.Parameters.AddWithValue("@Deadline", tempJob.getDeadline());
                sqlcom.Parameters.AddWithValue("@Link", tempJob.getLink());
                sqlcom.Parameters.AddWithValue("@Description", tempJob.getDescription());
                sqlcom.ExecuteNonQuery();
            }
        }
        sc.Close();

    


protected void Populate_Button_Click(object sender, EventArgs e)
    {
        txt_Name.Text = "Data Analyst";
        txt_Street.Text = "Horse Shoe Dr.";
        txt_City.Text = "Vienna";
        State_DropDown.SelectedValue = "VA";
        ListBox_Counties.SelectedIndex = 1;
        txt_Zip.Text = "22182";
        ListBox_School.SelectedIndex = 1;
        Type_DropDown.SelectedValue = "Internship";
        Cluster_DropDown.SelectedIndex = 1;
        Occupation_DropDown.SelectedIndex = 1;
        TxtCalendar.Text = "01-01-2018";
        Txt_Link.Text = "www.companywebsite.com";
        Txt_Description.Text = "This job requires xyz tasks and xyz qualities in a candidate";

    }
}