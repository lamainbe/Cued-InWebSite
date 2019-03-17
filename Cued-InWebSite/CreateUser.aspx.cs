using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.IO;
using Newtonsoft.Json.Linq;

public partial class CreateUser : System.Web.UI.Page
{
    protected void create_Click(object sender, EventArgs eventArgs)
    {
        if (firstNameTxt.Text != "" && lastNameTxt.Text != "" && passwordTxt.Text != "" && emailTxt.Text != "" && companyNameTxt.Text !="") // all fields must be filled out
        {
            // COMMIT VALUES
            //try
            //{
                System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
                sc.ConnectionString = @"Server=LOCALHOST;Database=Project;Trusted_Connection=Yes;"; // connect to PBKDF2 database
                //lblStatus.Text = "Database Connection Successful";

                sc.Open();
                Employer emp = new Employer(companyNameTxt.Text, firstNameTxt.Text, lastNameTxt.Text, emailTxt.Text, "", "", "", "", "", "", "", "", "");
                System.Data.SqlClient.SqlCommand createUser = new System.Data.SqlClient.SqlCommand();
                createUser.Connection = sc;
                // INSERT USER RECORD
                createUser.CommandText = "insert into[dbo].[Employer] values(@CName, @FName, @LName, @Email, @Phone , @Street, @City, @State, @County, @Zip, @Website, @BusinessDesc, @CultureDesc)";
                createUser.Parameters.Add(new SqlParameter("@CName", emp.getBusinessName()));
                createUser.Parameters.Add(new SqlParameter("@FName", emp.getContactFirstName()));
                createUser.Parameters.Add(new SqlParameter("@LName", emp.getContactLastName()));
                createUser.Parameters.Add(new SqlParameter("@Email", emp.getEmail()));
                createUser.Parameters.Add(new SqlParameter("@Phone", emp.getPhone()));
                createUser.Parameters.Add(new SqlParameter("@Street", emp.getStreet()));
                createUser.Parameters.Add(new SqlParameter("@City", emp.getCity()));
                createUser.Parameters.Add(new SqlParameter("@State", emp.getState()));
                createUser.Parameters.Add(new SqlParameter("@County", emp.getCounty()));
                createUser.Parameters.Add(new SqlParameter("@Zip", emp.getZip()));
                createUser.Parameters.Add(new SqlParameter("@Website", emp.getWebsiteLink()));
                createUser.Parameters.Add(new SqlParameter("@BusinessDesc", emp.getBusinessDescription()));
                createUser.Parameters.Add(new SqlParameter("@CultureDesc", emp.getCultureDescription()));
                createUser.ExecuteNonQuery();

                System.Data.SqlClient.SqlCommand setPass = new System.Data.SqlClient.SqlCommand();
                setPass.Connection = sc;
                
                // INSERT PASSWORD RECORD AND CONNECT TO USER
                setPass.CommandText = "insert into[dbo].[Pass] values(@Email, @Password)";
                setPass.Parameters.Add(new SqlParameter("@Email", emailTxt.Text));
                setPass.Parameters.Add(new SqlParameter("@Password", PasswordHash.HashPassword(passwordTxt.Text))); // hash entered password
                setPass.ExecuteNonQuery();

                sc.Close();

                //lblStatus.Text = "User committed!";
                firstNameTxt.Enabled = false;
                lastNameTxt.Enabled = false;
                emailTxt.Enabled = false;
                passwordTxt.Enabled = false;
                createBtn.Enabled = false;
                lnkAnother.Visible = true;

                Response.Redirect("userLogin.aspx", false);
        }
            //catch
            //{
            //    lblStatus.Text = "Database Error - User not committed.";
            //}
        
        //else
        //    lblStatus.Text = "Fill all fields.";

    }

    protected void lnkLogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("userLogin.aspx", false);
    }

    protected void lnkAnother_Click(object sender, EventArgs e)
    {
        firstNameTxt.Enabled = true;
        lastNameTxt.Enabled = true;
        emailTxt.Enabled = true;
        passwordTxt.Enabled = true;
        createBtn.Enabled = true;
        lnkAnother.Visible = false;
        firstNameTxt.Text = "";
        lastNameTxt.Text = "";
        emailTxt.Text = "";
        passwordTxt.Text = "";
        //lblStatus.Text = "";
    }


    protected void Exit_Click(object sender, EventArgs e)
    {
        System.Environment.Exit(1);
    }
}