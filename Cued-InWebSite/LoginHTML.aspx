<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginHTML.aspx.cs" Inherits="LoginHTML" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Required meta tags -->
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <title>Sign-in - CUED-in</title>
      <!-- plugins:css -->
      <link rel="stylesheet" href="../../../../vendors/iconfonts/mdi/font/css/materialdesignicons.min.css">
      <link rel="stylesheet" href="../../../../vendors/css/vendor.bundle.base.css">
      <link rel="stylesheet" href="../../../../vendors/css/vendor.bundle.addons.css">
      <!-- endinject -->
      <!-- plugin css for this page -->
      <!-- End plugin css for this page -->
      <!-- inject:css -->
      <link rel="stylesheet" href="../../../../css/vertical-layout-light/style.css">
      <!-- endinject -->
      <link rel="shortcut icon" href="../../../../images/favicon.png" />
</head>
<body class="boxed-layout">
    <form id="form1" runat="server">
        <div class="container-scroller">
    <div class="container-fluid page-body-wrapper full-page-wrapper">
      <div class="content-wrapper d-flex align-items-center auth">
        <div class="row w-100">
          <div class="col-lg-4 mx-auto">
            <div class="auth-form-light text-left p-5">
              <div class="brand-logo">
                <img src="../../../../images/logo.svg" alt="logo">
              </div>
              <h4>Welcome back!</h4>
              <h6 class="font-weight-light">Sign in to continue.</h6>
              <form class="pt-3">
                <div class="form-group">
                  <input type="email" class="form-control form-control-lg" id="exampleInputEmail1" placeholder="Username">
                </div>
                <div class="form-group">
                  <input type="password" class="form-control form-control-lg" id="exampleInputPassword1" placeholder="Password">
                </div>
                <div class="mt-3">
                  <a class="btn btn_block btn_primary btn_lg font-weight-medium auth-form-btn" href="../../index.html">SIGN IN</a>
                </div>
                <div class="my-2 d-flex justify-content-between align-items-center">
                  <a href="#" class="auth-link text-black">Forgot password?</a>
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
  <script src="../../../../vendors/js/vendor.bundle.base.js"></script>
  <script src="../../../../vendors/js/vendor.bundle.addons.js"></script>
  <!-- endinject -->
  <!-- inject:js -->
  <script src="../../../../js/off-canvas.js"></script>
  <script src="../../../../js/hoverable-collapse.js"></script>
  <script src="../../../../js/template.js"></script>
  <script src="../../../../js/settings.js"></script>
  <script src="../../../../js/todolist.js"></script>
  <!-- endinject -->
    </form>
</body>
</html>
