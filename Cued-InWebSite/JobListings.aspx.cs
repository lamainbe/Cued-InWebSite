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
            DateTime.Parse(TxtCalendar.Text), Txt_Link.Text, Txt_Description.Text);

        int temp = ListBox_Counties.Items.Count;

        if (temp < ListBox_School.Items.Count)
        {
            temp = ListBox_School.Items.Count;
        }

        for (int i = 0; i < temp; i++)
        {
            if (ListBox_Counties.Items[i].Selected)
            {
                Job.countyArray[i] = ListBox_Counties.Items[i].Value;
            }
            if (ListBox_School.Items[i].Selected)
            {
                Job.schoolArray[i] = ListBox_School.Items[i].Value;

            }
            sc.Open();
            String qry3 = "INSERT INTO [dbo].[JobListing] VALUES(@Name, @Street, @City, @State, @County, @Zip, @School, @Type, @Cluster, @Occupation, @Deadline, @Link, @Description)";
                System.Data.SqlClient.SqlCommand sqlcom = new System.Data.SqlClient.SqlCommand(qry3, sc);
                sqlcom.Parameters.AddWithValue("@Name", tempJob.getjobName());
                sqlcom.Parameters.AddWithValue("@Street", tempJob.getStreet());
                sqlcom.Parameters.AddWithValue("@City", tempJob.getCity());
                sqlcom.Parameters.AddWithValue("@State", tempJob.getState());
                sqlcom.Parameters.AddWithValue("@County", "test");
                sqlcom.Parameters.AddWithValue("@Zip", tempJob.getZip());
                sqlcom.Parameters.AddWithValue("@School","test");
                sqlcom.Parameters.AddWithValue("@Type", tempJob.getJobType());
                sqlcom.Parameters.AddWithValue("@Cluster", tempJob.getCluster());
                sqlcom.Parameters.AddWithValue("@Occupation", tempJob.getOccupation());
                sqlcom.Parameters.AddWithValue("@Deadline", tempJob.getDeadline());
                sqlcom.Parameters.AddWithValue("@Link", Txt_Link.Text.Trim());
                sqlcom.Parameters.AddWithValue("@Description", Txt_Description.Text.Trim());
                sqlcom.ExecuteNonQuery();
            sc.Close();

            }






    }
}