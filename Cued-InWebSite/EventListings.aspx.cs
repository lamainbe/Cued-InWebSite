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

    }

    protected void Populate_Button_Click(object sender, EventArgs e)
    {

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