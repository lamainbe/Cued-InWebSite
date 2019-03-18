using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class EventListings : System.Web.UI.Page
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

        Listing tempListing = new Listing(txt_Name.Text, "JobListing", txt_Street.Text, txt_City.Text, State_DropDown.SelectedValue, tempCounty, txt_Zip.Text,
            tempSchools, DateTime.Parse(TxtCalendar.Text), DropDownList_Status.SelectedValue);

        Event tempEvent = new Event(txt_Name.Text, Type_DropDown.SelectedValue, ListBox_School.SelectedValue, DateTime.Parse(TxtCalendar.Text),
             DateTime.Parse(Text_Time.Text), Txt_Description.Text);
        sc.Open();

        String qry = "INSERT INTO [dbo].[Listing] VALUES((select EmployerID from [dbo].[Employer] where Email = '" + Session["LoginEmail"].ToString() + "'), @Name, @TypeofListing, @Street, @City, @State, @County, @Zip, @School, @date, @status)";
        System.Data.SqlClient.SqlCommand sqlListing = new System.Data.SqlClient.SqlCommand(qry, sc);
        sqlListing.Connection = sc;

            sqlListing.Parameters.AddWithValue("@Name", tempEvent.getName());
            sqlListing.Parameters.AddWithValue("@TypeOfListing", "EventListing");
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

        String qry3 = "INSERT INTO [dbo].[EventListing] VALUES(" + maxID + ", @EventType, @Date, @Time)";
        System.Data.SqlClient.SqlCommand sqlcom = new System.Data.SqlClient.SqlCommand(qry3, sc);
        sqlcom.Connection = sc;
        sqlcom.Parameters.AddWithValue("@EventType", tempEvent.getType());
        sqlcom.Parameters.AddWithValue("@Date", tempEvent.getDate());
        sqlcom.Parameters.AddWithValue("@Time", tempEvent.getTime());
        sqlcom.ExecuteNonQuery();

        sc.Close();
    }

    protected void Populate_Button_Click(object sender, EventArgs e)
    {
        txt_Name.Text = "Meet the CEO of XXX Company";
        Type_DropDown.SelectedIndex = 1;
        TxtCalendar.Text = "01-01-2018";
        Text_Time.Text = "12:30pm";
        RadioButtonList1.SelectedIndex = 1;
        txt_Street.Text = "Horse Dr.";
        txt_City.Text = "Vienna";
        State_DropDown.SelectedValue = "VA";
        ListBox_Counties.SelectedIndex = 1;
        txt_Zip.Text = "22182";
        ListBox_School.SelectedIndex = 1;
        Txt_Description.Text = "We welcome all rising sophomores and juniors" +
            "to join us to come meet our CEO Elon Zuckerburg in Showker this Thursday!";
        DropDownList_Status.SelectedIndex = 1;
        
    }

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedIndex == 1)
        {
            lbl_Street.Visible = true;
            txt_Street.Visible = true;
            lbl_City.Visible = true;
            txt_City.Visible = true;
            lbl_State.Visible = true;
            State_DropDown.Visible = true;
            lbl_Counties.Visible = true;
            ListBox_Counties.Visible = true;
            lbl_Zip.Visible = true;
            txt_Zip.Visible = true;
        }
    }


    protected void ListBox_School_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}