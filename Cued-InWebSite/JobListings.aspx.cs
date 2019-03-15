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

    }
}