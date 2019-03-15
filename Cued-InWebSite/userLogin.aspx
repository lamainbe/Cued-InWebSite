<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userLogin.aspx.cs" Inherits="userLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <br />
            <asp:LinkButton ID="lnkCreate" runat="server" OnClick="lnkCreate_Click">Create User Page</asp:LinkButton>
            <br />
            <br />

        <div class="row">
        <div class="col-lg-8">
            <h6><b>About our Extra Credit Form</b></h6>
            <p>
                This form utilizes reCAPTCHA which protects you against spam and other types of automated abuse. We built upon
                the password hashing account create and login validation files to provide more secure pages. This
                added protection verifies the user interacting with the page is a human (not a bot) through image selection.
            </p>
        </div>
    </div>
    <br />
            <strong>Login</strong><br />
            
        
        <div class="row" style="margin-top:30px;">
            <div class="col-sm-4">
                <asp:Label ID="emaillbl" runat="server" Text="Email:"></asp:Label>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-4">
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-4">
                <asp:Label ID="Passwordlbl" runat="server" Text="Password:"></asp:Label>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-4">
                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
            
            <br />
            <br />
            <asp:Label ID="lblStatus" runat="server"></asp:Label>
        </div>

    
    

    
    
    <label id="lblMessage" runat="server" clientidmode="static"></label>  
    
    <asp:Button ID="Button1" runat="server" Text="Login" onClick="BtnLogin_Click" ssClass="btn btn-outline-primary"/>
   
    </form>
</body>
</html>
