﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.IO;
using Newtonsoft.Json.Linq;

public partial class userLogin : System.Web.UI.Page
{
    //protected void BtnLogin_Click(object sender, EventArgs e)
    //{

    //    // connect to database to retrieve stored password string
    //    try
    //    {
    //        System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
    //        sc.ConnectionString = @"Server=LOCALHOST;Database=Project;Trusted_Connection=Yes;";
    //        lblStatus.Text = "Database Connection Successful";

    //        sc.Open();
    //        System.Data.SqlClient.SqlCommand findPass = new System.Data.SqlClient.SqlCommand();
    //        findPass.Connection = sc;
    //        // SELECT PASSWORD STRING WHERE THE ENTERED USERNAME MATCHES
    //        findPass.CommandText = "select PasswordHash from [dbo].[Pass] where Email = @Email";
    //        findPass.Parameters.Add(new SqlParameter("@Email", txtEmail.Text));

    //        SqlDataReader reader = findPass.ExecuteReader(); // create a reader



    //        if (reader.HasRows) // if the username exists, it will continue
    //        {
    //            while (reader.Read()) // this will read the single record that matches the entered username
    //            {
    //                string storedHash = reader["PasswordHash"].ToString(); // store the database password into this variable

    //                if (PasswordHash.ValidatePassword(txtPassword.Text, storedHash)) // if the entered password matches what is stored, it will show success
    //                {
    //                    lblStatus.Text = "Login Successful!";

    //                    txtEmail.Enabled = false;
    //                    txtPassword.Enabled = false;
    //                    Response.Redirect("HomeScreen.aspx", false);
    //                }
    //                else
    //                    lblStatus.Text = "Password is wrong.";
    //            }
    //        }
    //        else // if the username doesn't exist, it will show failure
    //            lblStatus.Text = "Login failed.";


    //        sc.Close();
    //    }
    //    catch
    //    {
    //        lblStatus.Text = "Database Error.";
    //    }
    //}

    //protected void lnkCreate_Click(object sender, EventArgs e)
    //{
    //    Response.Redirect("createUser.aspx", false);
    //}
}