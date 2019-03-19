using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class EditJob : System.Web.UI.Page
{
    int i = 0;
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
        Response.Write("<script>window.close();</script>");
    }
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