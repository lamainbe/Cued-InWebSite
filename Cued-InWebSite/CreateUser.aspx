<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CreateUser.aspx.cs" Inherits="CreateUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
      <title>Sign-in - CUED-in</title>
      <!-- plugins:css -->
      <link rel="stylesheet" href="template/vendors/iconfonts/mdi/font/css/materialdesignicons.min.css"/>
      <link rel="stylesheet" href="template/vendors/css/vendor.bundle.base.css"/>
      <link rel="stylesheet" href="template/vendors/css/vendor.bundle.addons.css"/>
      <!-- endinject -->
      <!-- plugin css for this page -->
      <!-- End plugin css for this page -->
      <!-- inject:css -->
      <link rel="stylesheet" href="template/css/vertical-layout-light/style.css"/>
      <!-- endinject -->
      <link rel="shortcut icon" href="template/images/favicon.png" />
</head>
<body>
    <div class="container-scroller">
        <div class="container-fluid page-body-wrapper full-page-wrapper">
            <div class="content-wrapper d-flex align-items-center auth">
                <div class="row w-100">
                    <div class="col-lg-4 mx-auto">
                        <div class="auth-form-light text-left p-5">
                            <%--<div class="brand-logo">
                                <img src="template/images/logo.svg" alt="logo"/>
                            </div>--%>
                            <h4>Create Account</h4>
                            <h6 class="font-weight-light"></h6>
                            <form class="pt-3" runat="server">
                                <div class="form-group">
                                    <asp:TextBox ID="firstNameTxt" runat="server" class="form-control form-control-lg" placeholder="First Name"></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <asp:TextBox ID="lastNameTxt" runat="server" class="form-control form-control-lg" placeholder="Last Name"></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <asp:TextBox ID="companyNameTxt" runat="server" class="form-control form-control-lg" placeholder="Business Name"></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <asp:TextBox ID="emailTxt" runat="server" class="form-control form-control-lg" placeholder="Email"></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <asp:TextBox ID="passwordTxt" runat="server" class="form-control form-control-lg" placeholder="Password"></asp:TextBox>
                                </div>
                                <div class="mt-3">
                                    <%--<asp:Button ID="" runat="server" Text="Sign in" class="btn btn_block btn_primary btn_lg font-weight-medium auth-form-btn" OnClick="BtnLogin_Click" />--%>
                                    <asp:Button ID="createBtn" runat="server" Text="Create" onclick="create_Click" class="btn btn_block btn_primary btn_lg font-weight-medium auth-form-btn"/></asp:Button>
                                    <%--<a class="btn btn_block btn_primary btn_lg font-weight-medium auth-form-btn" href="HomeScreen.aspx" onmouseclick="BtnLogin_Click()">SIGN IN</a>--%>
                                </div>
                                <div class="mt-3">
                                    <asp:LinkButton ID="lnkAnother" runat="server" OnClick="lnkAnother_Click" Visible="False">Create Another</asp:LinkButton>
                                    <%--<a class="btn btn_block btn_primary btn_lg font-weight-medium auth-form-btn" href="HomeScreen.aspx" onmouseclick="BtnLogin_Click()">SIGN IN</a>--%>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!-- content-wrapper ends -->
        </div>
        <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <!-- plugins:js -->
    <script src="template/vendors/js/vendor.bundle.base.js"></script>
    <script src="template/vendors/js/vendor.bundle.addons.js"></script>
    <!-- endinject -->
    <!-- inject:js -->
    <script src="template/js/off-canvas.js"></script>
    <script src="template/js/hoverable-collapse.js"></script>
    <script src="template/js/template.js"></script>
    <script src="template/js/settings.js"></script>
    <script src="template/js/todolist.js"></script>
    <!-- endinject -->
    <%--<form id="form1" runat="server">
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
            
        </div>
    </div>
    <div class="row">
        <div class="col-sm-4">
            <asp:Label ID="lastNameLbl" runat="server" Text="Last Name:"></asp:Label>
        </div>
    </div>
     <div class="row">
        <div class="col-sm-4">
            
        </div>
    </div>
    <div class="row">
        <div class="col-sm-4">
            <asp:Label ID="companyNameLbl" runat="server" Text="Company Name: "></asp:Label>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-4">
            
        </div>
    </div>
    <div class="row">
        <div class="col-sm-4">
            <asp:Label ID="emailLbl" runat="server" Text="Email Address: "></asp:Label>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-4">
            
        </div>
    </div>
    <div class="row">
        <div class="col-sm-4">
            <asp:Label ID="passwordLbl" runat="server" Text="Password:"></asp:Label>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-4">
            
        </div>
    </div>
    

    <br />

    

    <asp:Label ID="lblStatus" runat="server"></asp:Label>
            <br />
    <asp:LinkButton ID="lnkAnother" runat="server" OnClick="lnkAnother_Click" Visible="False">Create Another</asp:LinkButton>

    <asp:Button ID="createBtn" runat="server" Text="Create" onclick="create_Click" CssClass="btn btn-outline-primary"/></asp:Button>
    
           
    
    

            

    </form>--%>
</body>
</html>
