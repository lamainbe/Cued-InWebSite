using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class ScholarshipListings : System.Web.UI.Page
{

    System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection(ConfigurationManager.ConnectionStrings["DBConnectionString"].ToString());

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Job_Calendar.Visible = false;

        }
    }

    protected void Cal_Button_Click(object sender, ImageClickEventArgs e)
    {
        if (Job_Calendar.Visible == false)
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
        System.Environment.Exit(1);
    }

    protected void Btn_Save_Click(object sender, EventArgs e)
    {
        String tempCounty = "";
        for (int i = 0; i < ListBox_Counties.Items.Count; i++)
        {
            if (ListBox_Counties.Items[i].Selected)
            {
                tempCounty += ListBox_Counties.Items[i].ToString() + "/";
            }
        }
        String tempSchools = "";
        for (int i = 0; i < ListBox_School.Items.Count; i++)
        {
            if (ListBox_School.Items[i].Selected)
            {
                tempSchools += ListBox_School.Items[i].ToString() + "/";
            }
        }

        Listing tempListing = new Listing(txt_Name.Text, "ScholarshipListing", txt_Street.Text, txt_City.Text, State_DropDown.SelectedValue, tempCounty, txt_Zip.Text,
            tempSchools, DateTime.Parse(TxtCalendar.Text), DropDownList_Status.SelectedValue);

        Scholarship tempScholarship = new Scholarship(txt_Name.Text, txt_fundingOrg.Text, Convert.ToInt32(DropDown_Recipients.SelectedValue), Convert.ToInt32(txt_Amount.Text), 
            DateTime.Parse(TxtCalendar.Text), Txt_Link.Text, Txt_Description.Text);

        sc.Open();

        String qry = "INSERT INTO [dbo].[Listing] VALUES((select EmployerID from [dbo].[Employer] where Email = '" + Session["LoginEmail"].ToString() + "'), @Name, @TypeofListing, @Street, @City, @State, @County, @Zip, @School, @date, @status)";
        System.Data.SqlClient.SqlCommand sqlListing = new System.Data.SqlClient.SqlCommand(qry, sc);
        sqlListing.Connection = sc;


        sqlListing.Parameters.AddWithValue("@Name", tempScholarship.getName());
        sqlListing.Parameters.AddWithValue("@TypeOfListing", "ScholarshipListing");
        sqlListing.Parameters.AddWithValue("@Street", tempListing.getStreet());
        sqlListing.Parameters.AddWithValue("@City", tempListing.getCity());
        sqlListing.Parameters.AddWithValue("@State", tempListing.getState());
        sqlListing.Parameters.AddWithValue("@County", tempListing.getCounty());
        sqlListing.Parameters.AddWithValue("@Zip", tempListing.getZip());
        sqlListing.Parameters.AddWithValue("@School", tempListing.getSchool());
        sqlListing.Parameters.AddWithValue("@date", DateTime.Today);
        sqlListing.Parameters.AddWithValue("@status", tempListing.getStatus());

        sqlListing.ExecuteNonQuery();


        //get max id
        System.Data.SqlClient.SqlCommand sqlcom1 = new System.Data.SqlClient.SqlCommand();
        sqlcom1.Connection = sc;
        sqlcom1.CommandText = "select max(ListingID) from [dbo].[Listing]";
        int maxID = Convert.ToInt32(sqlcom1.ExecuteScalar());
        //maxID++;
        sqlcom1.ExecuteNonQuery();

        //create job listing

        String qry3 = "INSERT INTO [dbo].[ScholarshipListing] VALUES(" + maxID + ", @FundingOrganization, @NumberOfRecipients, @Amount, @Deadline, @Link, @Description)";
        System.Data.SqlClient.SqlCommand sqlcom = new System.Data.SqlClient.SqlCommand(qry3, sc);
        sqlcom.Connection = sc;
        sqlcom.Parameters.AddWithValue("@FundingOrganization", tempScholarship.getFundingOrg());
        sqlcom.Parameters.AddWithValue("@NumberOfRecipients", tempScholarship.getRecipients());
        sqlcom.Parameters.AddWithValue("@Amount", tempScholarship.getAmount());
        sqlcom.Parameters.AddWithValue("@Deadline", tempScholarship.getDeadline());
        sqlcom.Parameters.AddWithValue("@Link", tempScholarship.getLink());
        sqlcom.Parameters.AddWithValue("@Description", tempScholarship.getDescription());
        sqlcom.ExecuteNonQuery();

        sc.Close();



    }

    protected void Populate_Button_Click(object sender, EventArgs e)
    {
        txt_Name.Text = "Outstanding Volunteer Scholarship";
        txt_Street.Text = "Main St.";
        txt_City.Text = "Fairfax";
        State_DropDown.SelectedValue = "VA";
        ListBox_Counties.SelectedIndex = 18;
        txt_Zip.Text = "22030";
        ListBox_School.SelectedIndex = 7;
        txt_fundingOrg.Text = "Food Lion";
        DropDown_Recipients.SelectedValue = "5";
        txt_Amount.Text = "1000";
        TxtCalendar.Text = "01-01-2018";
        Txt_Link.Text = "www.companywebsite.com";
        Txt_Description.Text = "This scholarship requires xyz tasks and xyz qualities in a candidate";

    }
}