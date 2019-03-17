<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CreateUser.aspx.cs" Inherits="CreateUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
        <br />
    <asp:LinkButton ID="lnkLogin" runat="server" OnClick="lnkLogin_Click">Login Page</asp:LinkButton>
    <br />
    <br />


    <strong>Create User</strong><br />


    <div class="row" style="margin-top:30px;">
        <div class="col-sm-4">
            <asp:Label ID="firstNameLbl" runat="server" Text="First Name:"></asp:Label>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-4">
            <asp:TextBox ID="firstNameTxt" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-4">
            <asp:Label ID="lastNameLbl" runat="server" Text="Last Name:"></asp:Label>
        </div>
    </div>
     <div class="row">
        <div class="col-sm-4">
            <asp:TextBox ID="lastNameTxt" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-4">
            <asp:Label ID="companyNameLbl" runat="server" Text="Company Name: "></asp:Label>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-4">
            <asp:TextBox ID="companyNameTxt" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-4">
            <asp:Label ID="emailLbl" runat="server" Text="Email Address: "></asp:Label>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-4">
            <asp:TextBox ID="emailTxt" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-4">
            <asp:Label ID="passwordLbl" runat="server" Text="Password:"></asp:Label>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-4">
            <asp:TextBox ID="passwordTxt" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>
    

    <br />

    

    <asp:Label ID="lblStatus" runat="server"></asp:Label>
            <br />
    <asp:LinkButton ID="lnkAnother" runat="server" OnClick="lnkAnother_Click" Visible="False">Create Another</asp:LinkButton>

    <asp:Button ID="createBtn" runat="server" Text="Create" onclick="create_Click" CssClass="btn btn-outline-primary"/></asp:Button>
    
           
    
    

            

    </form>
</body>
</html>
