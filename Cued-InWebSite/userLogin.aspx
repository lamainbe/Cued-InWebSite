<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userLogin.aspx.cs" Inherits="userLogin" %>
 
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <!-- Required meta tags -->
      <meta charset="utf-8"/>
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
   
        
<body class="boxed-layout">
    <div class="container-scroller">
        <div class="container-fluid page-body-wrapper full-page-wrapper">
            <div class="content-wrapper d-flex align-items-center auth">
                <div class="row w-100">
                    <div class="col-lg-4 mx-auto">
                        <div class="auth-form-light text-left p-5">
                            <div class="brand-logo">
                                <img src="template/images/logo.svg" alt="logo"/>
                            </div>
                            <h4>Welcome back!</h4>
                            <h6 class="font-weight-light">Sign in to continue.</h6>
                            <form class="pt-3" runat="server">
                                <div class="form-group">
                                    <asp:TextBox ID="txtEmail" type="text" runat="server" class="form-control form-control-lg" placeholder="Email"></asp:TextBox>
                                    
                                    <%--<input type="email" class="form-control form-control-lg" id="exampleInputEmail1" placeholder="Username"/>--%>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="txtPassword" type="text" runat="server" class="form-control form-control-lg" placeholder="Password"></asp:TextBox>
                                    <%--<input type="password" class="form-control form-control-lg" id="exampleInputPassword1" placeholder="Password"/>--%>
                                </div>
                                <div class="mt-3">
                                    <asp:Button ID="Button1" runat="server" Text="Sign in" class="btn btn_block btn_primary btn_lg font-weight-medium auth-form-btn" OnClick="BtnLogin_Click" />
                                    <%--<a class="btn btn_block btn_primary btn_lg font-weight-medium auth-form-btn" href="HomeScreen.aspx" onmouseclick="BtnLogin_Click()">SIGN IN</a>--%>
                               
                                
                                </div>
                                <div class="my-2 d-flex justify-content-between align-items-center">
                                    <a href="#" class="auth-link text-black">Forgot password?</a>
                                </div>
                                <div>
                                    <asp:Label ID="Label1" runat="server" Text="nothing"></asp:Label>
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
   
    </form>--%>
  
</body>
</html>
