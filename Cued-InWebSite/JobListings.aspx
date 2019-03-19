<%@ Page Title="" Language="C#"  AutoEventWireup="true" CodeFile="JobListings.aspx.cs" Inherits="JobListings" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Job Listings - CUED-in</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="template/vendors/iconfonts/mdi/font/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="template/vendors/css/vendor.bundle.base.css">
  <link rel="stylesheet" href="template/vendors/css/vendor.bundle.addons.css">
  <!-- endinject -->
  <!-- plugin css for this page -->
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="template/css/vertical-layout-light/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="template/images/favicon.png" />
</head>

<body class="boxed-layout">
  <div class="container-scroller">
    <!-- partial:../../partials/_navbar.html -->
    <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
      <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
        <a class="navbar-brand brand-logo" href="../../index.html"><img src="template/images/logo.svg" alt="logo"/></a>
        <a class="navbar-brand brand-logo-mini" href="../../index.html"><img src="template/images/logo-mini.svg" alt="logo"/></a>
      </div>
      <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end justify-content-lg-start">
        <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
          <span class="mdi mdi-menu"></span>
        </button>
        <ul class="navbar-nav mr-lg-2">
          <li class="nav-item nav-search d-none d-lg-block">
            <div class="input-group">
              <div class="input-group-prepend">
                <span class="input-group-text" id="search">
                  <i class="mdi mdi-magnify"></i>
                </span>
              </div>
              <input type="text" class="form-control" placeholder="search" aria-label="search" aria-describedby="search">
            </div>
          </li>
        </ul>
        <ul class="navbar-nav navbar-nav-right">
          <li class="nav-item dropdown">
            <a class="nav-link count-indicator dropdown-toggle" id="notificationDropdown" href="#" data-toggle="dropdown">
              <i class="mdi mdi-bell-outline mx-0"></i>
              <span class="count"></span>
            </a>
            <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="notificationDropdown">
              <a class="dropdown-item">
                <p class="mb-0 font-weight-normal float-left">You have 4 new notifications
                </p>
                <span class="badge badge-pill badge-warning float-right">View all</span>
              </a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item preview-item">
                <div class="preview-thumbnail">
                  <div class="preview-icon bg-success">
                    <i class="mdi mdi-information mx-0"></i>
                  </div>
                </div>
                <div class="preview-item-content">
                  <h6 class="preview-subject font-weight-medium">Application Error</h6>
                  <p class="font-weight-light small-text mb-0">
                    Just now
                  </p>
                </div>
              </a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item preview-item">
                <div class="preview-thumbnail">
                  <div class="preview-icon bg-warning">
                    <i class="mdi mdi-settings mx-0"></i>
                  </div>
                </div>
                <div class="preview-item-content">
                  <h6 class="preview-subject font-weight-medium">Settings</h6>
                  <p class="font-weight-light small-text mb-0">
                    Private message
                  </p>
                </div>
              </a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item preview-item">
                <div class="preview-thumbnail">
                  <div class="preview-icon bg-info">
                    <i class="mdi mdi-account-box mx-0"></i>
                  </div>
                </div>
                <div class="preview-item-content">
                  <h6 class="preview-subject font-weight-medium">New user registration</h6>
                  <p class="font-weight-light small-text mb-0">
                    2 days ago
                  </p>
                </div>
              </a>
            </div>
          </li>
          <li class="nav-item nav-profile dropdown">
            <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" id="profileDropdown">
              <img src="https://via.placeholder.com/30x30" alt="profile"/>
              <span class="nav-profile-name">Emily Perry</span>
            </a>
            <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="profileDropdown">
              <a class="dropdown-item">
                <i class="mdi mdi-settings text-primary"></i>
                Settings
              </a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item">
                <i class="mdi mdi-logout text-primary"></i>
                Logout
              </a>
            </div>
          </li>
          <li class="nav-item nav-settings d-none d-lg-flex">
            <a class="nav-link" href="#">
              <i class="mdi mdi-dots-horizontal"></i>
            </a>
          </li>
        </ul>
        <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
          <span class="mdi mdi-menu"></span>
        </button>
      </div>
    </nav>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
      <!-- partial:../../partials/_settings-panel.html -->
      <div class="theme-setting-wrapper">
        <div id="settings-trigger"><i class="mdi mdi-settings"></i></div>
        <div id="theme-settings" class="settings-panel">
          <i class="settings-close mdi mdi-close"></i>
          <p class="settings-heading">SIDEBAR SKINS</p>
          <div class="sidebar-bg-options selected" id="sidebar-light-theme"><div class="img-ss rounded-circle bg-light border mr-3"></div>Light</div>
          <div class="sidebar-bg-options" id="sidebar-dark-theme"><div class="img-ss rounded-circle bg-dark border mr-3"></div>Dark</div>
          <p class="settings-heading mt-2">HEADER SKINS</p>
          <div class="color-tiles mx-0 px-4">
            <div class="tiles success"></div>
            <div class="tiles warning"></div>
            <div class="tiles danger"></div>
            <div class="tiles light"></div>
            <div class="tiles info"></div>
            <div class="tiles dark"></div>
            <div class="tiles default"></div>
          </div>
        </div>
      </div>
      <div id="right-sidebar" class="settings-panel">
        <i class="settings-close mdi mdi-close"></i>
        <ul class="nav nav-tabs" id="setting-panel" role="tablist">
          <li class="nav-item">
            <a class="nav-link active" id="todo-tab" data-toggle="tab" href="#todo-section" role="tab" aria-controls="todo-section" aria-expanded="true">TO DO LIST</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" id="chats-tab" data-toggle="tab" href="#chats-section" role="tab" aria-controls="chats-section">CHATS</a>
          </li>
        </ul>
        <div class="tab-content" id="setting-content">
          <div class="tab-pane fade show active scroll-wrapper" id="todo-section" role="tabpanel" aria-labelledby="todo-section">
            <div class="add-items d-flex px-3 mb-0">
              <form class="form w-100">
                <div class="form-group d-flex">
                  <input type="text" class="form-control todo-list-input" placeholder="Add To-do">
                  <button type="submit" class="add btn btn-primary todo-list-add-btn" id="add-task">Add</button>
                </div>
              </form>
            </div>
            <div class="list-wrapper px-3">
              <ul class="d-flex flex-column-reverse todo-list">
                <li>
                  <div class="form-check">
                    <label class="form-check-label">
                      <input class="checkbox" type="checkbox">
                      Team review meeting at 3.00 PM
                    </label>
                  </div>
                  <i class="remove mdi mdi-close-circle-outline"></i>
                </li>
                <li>
                  <div class="form-check">
                    <label class="form-check-label">
                      <input class="checkbox" type="checkbox">
                      Prepare for presentation
                    </label>
                  </div>
                  <i class="remove mdi mdi-close-circle-outline"></i>
                </li>
                <li>
                  <div class="form-check">
                    <label class="form-check-label">
                      <input class="checkbox" type="checkbox">
                      Resolve all the low priority tickets due today
                    </label>
                  </div>
                  <i class="remove mdi mdi-close-circle-outline"></i>
                </li>
                <li class="completed">
                  <div class="form-check">
                    <label class="form-check-label">
                      <input class="checkbox" type="checkbox" checked>
                      Schedule meeting for next week
                    </label>
                  </div>
                  <i class="remove mdi mdi-close-circle-outline"></i>
                </li>
                <li class="completed">
                  <div class="form-check">
                    <label class="form-check-label">
                      <input class="checkbox" type="checkbox" checked>
                      Project review
                    </label>
                  </div>
                  <i class="remove mdi mdi-close-circle-outline"></i>
                </li>
              </ul>
            </div>
            <div class="events py-4 border-bottom px-3">
              <div class="wrapper d-flex mb-2">
                <i class="mdi mdi-circle-outline text-primary mr-2"></i>
                <span>Feb 11 2018</span>
              </div>
              <p class="mb-0 font-weight-thin text-gray">Creating component page</p>
              <p class="text-gray mb-0">build a js based app</p>
            </div>
            <div class="events pt-4 px-3">
              <div class="wrapper d-flex mb-2">
                <i class="mdi mdi-circle-outline text-primary mr-2"></i>
                <span>Feb 7 2018</span>
              </div>
              <p class="mb-0 font-weight-thin text-gray">Meeting with Alisa</p>
              <p class="text-gray mb-0 ">Call Sarah Graves</p>
            </div>
          </div>
          <!-- To do section tab ends -->
          <div class="tab-pane fade" id="chats-section" role="tabpanel" aria-labelledby="chats-section">
            <div class="d-flex align-items-center justify-content-between border-bottom">
              <p class="settings-heading border-top-0 mb-3 pl-3 pt-0 border-bottom-0 pb-0">Friends</p>
              <small class="settings-heading border-top-0 mb-3 pt-0 border-bottom-0 pb-0 pr-3 font-weight-normal">See All</small>
            </div>
            <ul class="chat-list">
              <li class="list active">
                <div class="profile"><img src="https://via.placeholder.com/40x40" alt="image"><span class="online"></span></div>
                <div class="info">
                  <p>Thomas Douglas</p>
                  <p>Available</p>
                </div>
                <small class="text-muted my-auto">19 min</small>
              </li>
              <li class="list">
                <div class="profile"><img src="https://via.placeholder.com/40x40" alt="image"><span class="offline"></span></div>
                <div class="info">
                  <div class="wrapper d-flex">
                    <p>Catherine</p>
                  </div>
                  <p>Away</p>
                </div>
                <div class="badge badge-success badge-pill my-auto mx-2">4</div>
                <small class="text-muted my-auto">23 min</small>
              </li>
              <li class="list">
                <div class="profile"><img src="https://via.placeholder.com/40x40" alt="image"><span class="online"></span></div>
                <div class="info">
                  <p>Daniel Russell</p>
                  <p>Available</p>
                </div>
                <small class="text-muted my-auto">14 min</small>
              </li>
              <li class="list">
                <div class="profile"><img src="https://via.placeholder.com/40x40" alt="image"><span class="offline"></span></div>
                <div class="info">
                  <p>James Richardson</p>
                  <p>Away</p>
                </div>
                <small class="text-muted my-auto">2 min</small>
              </li>
              <li class="list">
                <div class="profile"><img src="https://via.placeholder.com/40x40" alt="image"><span class="online"></span></div>
                <div class="info">
                  <p>Madeline Kennedy</p>
                  <p>Available</p>
                </div>
                <small class="text-muted my-auto">5 min</small>
              </li>
              <li class="list">
                <div class="profile"><img src="https://via.placeholder.com/40x40" alt="image"><span class="online"></span></div>
                <div class="info">
                  <p>Sarah Graves</p>
                  <p>Available</p>
                </div>
                <small class="text-muted my-auto">47 min</small>
              </li>
            </ul>
          </div>
          <!-- chat tab ends -->
        </div>
      </div>
      <!-- partial -->
      <!-- partial:../../partials/_sidebar.html -->
      <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <ul class="nav">
          <li class="nav-item">
            <a class="nav-link" href="index.html">
              <i class="mdi mdi-view-quilt menu-icon"></i>
              <span class="menu-title">Dashboard</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <i class="mdi mdi-briefcase menu-icon"></i>
              <span class="menu-title">Job Listings</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <i class="mdi mdi-school menu-icon"></i>
              <span class="menu-title">Scholarships</span>
            </a>
            <li class="nav-item">
            <a class="nav-link" href="#">
              <i class="mdi mdi-calendar-multiple menu-icon"></i>
              <span class="menu-title">Events</span>
            </a>
          </li>
          </li>
        </ul>
      </nav>
      <!-- partial -->
      <div class="main-panel">
        <div class="content-wrapper">
          <h3>Add a New Job</h3>
            <div class="col-12 grid-margin">
              <div class="card">
                <div class="card-body">
                  <form class="form-sample" runat="server">
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">Job Name</label>
                          <div class="col-sm-9">
                              <asp:TextBox ID="txt_Name" type="text" runat="server" class="form-control" ></asp:TextBox>
                           <%-- <input type="text" class="form-control" />--%>
                          </div>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">Street Address</label>
                          <div class="col-sm-9">
                              <asp:TextBox ID="txt_Street" type="text" runat="server" class="form-control" ></asp:TextBox>
                            <%--<input type="text" class="form-control" />--%>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">City</label>
                          <div class="col-sm-9">
                              <asp:TextBox ID="txt_City" type="text" runat="server" class="form-control" ></asp:TextBox>
                            <%--<input type="text" class="form-control" />--%>
                          </div>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">State</label>
                          <div class="col-sm-9">
                              <asp:DropDownList ID="State_DropDown" runat="server" class="form-control" >
                                 <asp:ListItem Value="AL">Alabama</asp:ListItem>
	                                <asp:ListItem Value="AK">Alaska</asp:ListItem>
	                                <asp:ListItem Value="AZ">Arizona</asp:ListItem>
	                                <asp:ListItem Value="AR">Arkansas</asp:ListItem>
	                                <asp:ListItem Value="CA">California</asp:ListItem>
	                                <asp:ListItem Value="CO">Colorado</asp:ListItem>
	                                <asp:ListItem Value="CT">Connecticut</asp:ListItem>
	                                <asp:ListItem Value="DC">District of Columbia</asp:ListItem>
	                                <asp:ListItem Value="DE">Delaware</asp:ListItem>
	                                <asp:ListItem Value="FL">Florida</asp:ListItem>
	                                <asp:ListItem Value="GA">Georgia</asp:ListItem>
	                                <asp:ListItem Value="HI">Hawaii</asp:ListItem>
	                                <asp:ListItem Value="ID">Idaho</asp:ListItem>
	                                <asp:ListItem Value="IL">Illinois</asp:ListItem>
	                                <asp:ListItem Value="IN">Indiana</asp:ListItem>
	                                <asp:ListItem Value="IA">Iowa</asp:ListItem>
	                                <asp:ListItem Value="KS">Kansas</asp:ListItem>
	                                <asp:ListItem Value="KY">Kentucky</asp:ListItem>
	                                <asp:ListItem Value="LA">Louisiana</asp:ListItem>
	                                <asp:ListItem Value="ME">Maine</asp:ListItem>
	                                <asp:ListItem Value="MD">Maryland</asp:ListItem>
	                                <asp:ListItem Value="MA">Massachusetts</asp:ListItem>
	                                <asp:ListItem Value="MI">Michigan</asp:ListItem>
	                                <asp:ListItem Value="MN">Minnesota</asp:ListItem>
	                                <asp:ListItem Value="MS">Mississippi</asp:ListItem>
	                                <asp:ListItem Value="MO">Missouri</asp:ListItem>
	                                <asp:ListItem Value="MT">Montana</asp:ListItem>
	                                <asp:ListItem Value="NE">Nebraska</asp:ListItem>
	                                <asp:ListItem Value="NV">Nevada</asp:ListItem>
	                                <asp:ListItem Value="NH">New Hampshire</asp:ListItem>
	                                <asp:ListItem Value="NJ">New Jersey</asp:ListItem>
	                                <asp:ListItem Value="NM">New Mexico</asp:ListItem>
	                                <asp:ListItem Value="NY">New York</asp:ListItem>
	                                <asp:ListItem Value="NC">North Carolina</asp:ListItem>
	                                <asp:ListItem Value="ND">North Dakota</asp:ListItem>
	                                <asp:ListItem Value="OH">Ohio</asp:ListItem>
	                                <asp:ListItem Value="OK">Oklahoma</asp:ListItem>
	                                <asp:ListItem Value="OR">Oregon</asp:ListItem>
	                                <asp:ListItem Value="PA">Pennsylvania</asp:ListItem>
	                                <asp:ListItem Value="RI">Rhode Island</asp:ListItem>
	                                <asp:ListItem Value="SC">South Carolina</asp:ListItem>
	                                <asp:ListItem Value="SD">South Dakota</asp:ListItem>
	                                <asp:ListItem Value="TN">Tennessee</asp:ListItem>
	                                <asp:ListItem Value="TX">Texas</asp:ListItem>
	                                <asp:ListItem Value="UT">Utah</asp:ListItem>
	                                <asp:ListItem Value="VT">Vermont</asp:ListItem>
	                                <asp:ListItem Value="VA">Virginia</asp:ListItem>
	                                <asp:ListItem Value="WA">Washington</asp:ListItem>
	                                <asp:ListItem Value="WV">West Virginia</asp:ListItem>
	                                <asp:ListItem Value="WI">Wisconsin</asp:ListItem>
	                                <asp:ListItem Value="WY">Wyoming</asp:ListItem>
                             </asp:DropDownList>
                            <%--<select class="form-control">
                              <option>1</option>
                              <option>2</option>
                            </select>--%>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">County</label>
                          <div class="col-sm-9">
                              <asp:ListBox ID="ListBox_Counties" runat="server" SelectionMode="Multiple" class="form-control" >
                               <asp:ListItem>Accomack</asp:ListItem>
                               <asp:ListItem>Albemarle</asp:ListItem>
                               <asp:ListItem>Alleghany</asp:ListItem>
                               <asp:ListItem>Amelia </asp:ListItem>
                               <asp:ListItem>Arlington</asp:ListItem>
                               <asp:ListItem>Augusta</asp:ListItem>
                               <asp:ListItem>Bath</asp:ListItem>
                               <asp:ListItem>Bedford</asp:ListItem>
                               <asp:ListItem>Bland</asp:ListItem>
                               <asp:ListItem>Botetourt</asp:ListItem>
                               <asp:ListItem>Brunswich</asp:ListItem>
                               <asp:ListItem>Buchana</asp:ListItem>
                               <asp:ListItem>Buckingham</asp:ListItem>
                               <asp:ListItem>Carroll</asp:ListItem>
                               <asp:ListItem>Charlotte</asp:ListItem>
                               <asp:ListItem>Chesterfield</asp:ListItem>
                               <asp:ListItem>Dinwiddie</asp:ListItem>
                               <asp:ListItem>Essex</asp:ListItem>
                               <asp:ListItem>Fairfax</asp:ListItem>
                               <asp:ListItem>Goochland</asp:ListItem>
                               <asp:ListItem>Rockingham</asp:ListItem>
                               <asp:ListItem>Smyth</asp:ListItem>
                           </asp:ListBox>
                            <%--<select class="form-control">
                              <option>1</option>
                              <option>2</option>
                            </select>--%>
                          </div>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">Zip Code</label>
                          <div class="col-sm-9">
                              <asp:TextBox ID="txt_Zip" type="text" runat="server" class="form-control" ></asp:TextBox>
                            <%--<input type="text" class="form-control" />--%>
                          </div>
                        </div>
                      </div>
                    </div><!--end row-->
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">School</label>
                          <div class="col-sm-9">
                              <asp:ListBox ID="ListBox_School" runat="server" SelectionMode="Multiple" class="form-control" >
                                <asp:ListItem>Broadway</asp:ListItem>
                                <asp:ListItem>East Rockingham</asp:ListItem>
                                <asp:ListItem>Spotswood</asp:ListItem>
                                <asp:ListItem>Turner Ashby</asp:ListItem>
                                <asp:ListItem>Rockingham Academy</asp:ListItem>
                                <asp:ListItem>Massanutten Technical Center</asp:ListItem>
                                <asp:ListItem>Elkton Middle School</asp:ListItem>
                                <asp:ListItem>J. Frank Hillyard</asp:ListItem>
                                <asp:ListItem>Montevideo</asp:ListItem>
                                <asp:ListItem>Wilbur S. Pence</asp:ListItem>
                                <asp:ListItem>Cub Run</asp:ListItem>
                                <asp:ListItem>Elkton Elementary</asp:ListItem>
                                <asp:ListItem>Fulks Run</asp:ListItem>
                                <asp:ListItem>Lacey Spring</asp:ListItem>
                                <asp:ListItem>Linville-Edom</asp:ListItem>
                            </asp:ListBox>
                            <%--<select class="form-control">
                              <option>1</option>
                              <option>2</option>
                            </select>--%>
                          </div>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">Job Type</label>
                          <div class="col-sm-9">
                              <asp:DropDownList ID="Type_DropDown" runat="server" class="form-control" >
                                 <asp:ListItem Value="Internship">Internship</asp:ListItem>
                                  <asp:ListItem Value="Job Shadowing">Job Shadowing</asp:ListItem>
                                  <asp:ListItem Value="Mentorship">Mentorship</asp:ListItem>
                                  <asp:ListItem Value="Service Learning">Service Learning</asp:ListItem>
                                  <asp:ListItem Value="Volunteer">Volunteer</asp:ListItem>
                                  <asp:ListItem Value="Clinical Cooperative Education">Clinical Cooperative Education</asp:ListItem>
                                 <asp:ListItem Value="Cooperative Education">Cooperative Education</asp:ListItem>
                                  <asp:ListItem Value="Youth Regisered Apprenticeship">Youth Regisered Apprenticeship</asp:ListItem>
                                  <asp:ListItem Value="Registered Appenticeships">Registered Apprenticeships</asp:ListItem>
                                  <asp:ListItem Value="General Employement">General Employement</asp:ListItem>
                             </asp:DropDownList>
                            <%--<select class="form-control">
                              <option>1</option>
                              <option>2</option>
                            </select>--%>
                          </div>
                        </div>
                      </div>
                    </div><!--end row-->
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">Career Cluster</label>
                          <div class="col-sm-9">
                              <asp:DropDownList ID="Cluster_DropDown" runat="server" class="form-control" >
                                <asp:ListItem Value="Agriculture,Food & Natural Resources">Agriculture,Food & Natural Resources</asp:ListItem>
                                 <asp:ListItem Value="Architecture & Construction">Architecture & Construction</asp:ListItem>
                                 <asp:ListItem Value="Arts,Audio/Video Technology & Communications">Arts,Audio/Video Technology & Communications</asp:ListItem>
                                 <asp:ListItem Value="Business Management & Administration">Business Management & Administration</asp:ListItem>
                                 <asp:ListItem Value="Education & Training">Education & Training</asp:ListItem>
                                 <asp:ListItem Value="Finance">Finance</asp:ListItem>
                                 <asp:ListItem Value="Government & Public Administration">Government & Public Administration</asp:ListItem>
                                 <asp:ListItem Value="Health Science">Health Science</asp:ListItem>
                                 <asp:ListItem Value="Hospitality & Tourism">Hospitality & Tourism</asp:ListItem>
                                 <asp:ListItem Value="Human Services">Human Services</asp:ListItem>
                                 <asp:ListItem Value="Law,Public Safety,Corrections & Security">Law,Public Safety,Corrections & Security</asp:ListItem>
                                 <asp:ListItem Value="Manufacturing">Manufacturing</asp:ListItem>
                                 <asp:ListItem Value="Marketing">Marketing</asp:ListItem>
                                 <asp:ListItem Value="Science,Technology,Enginering & Mathematics">Science,Technology,Enginering & Mathematics</asp:ListItem>
                                 <asp:ListItem Value="Transportation,Distribution & Logistics">Transportation,Distribution & Logistics</asp:ListItem>
                             </asp:DropDownList>
                            <%--<select class="form-control">
                              <option>1</option>
                              <option>2</option>
                            </select>--%>
                          </div>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">Occup.</label>
                          <div class="col-sm-9">
                              <asp:DropDownList ID="Occupation_DropDown" runat="server" class="form-control" >
                                 <asp:ListItem>Aquacultural Managers</asp:ListItem>
                                 <asp:ListItem>Farm and Ranch Managers</asp:ListItem>
                                 <asp:ListItem>Farm Labor Contractors</asp:ListItem>
                                 <asp:ListItem>Nonfarm Animal Caretakers</asp:ListItem>
                                 <asp:ListItem>Environmental Engineering Technicians </asp:ListItem>
                                 <asp:ListItem>Hazardous Material Removal Workers</asp:ListItem>
                                 <asp:ListItem>Carpenters</asp:ListItem>
                                 <asp:ListItem>Construction Carpenters</asp:ListItem>
                                 <asp:ListItem>Crane Operators and Tenders</asp:ListItem>
                                 <asp:ListItem>Dredge Operators</asp:ListItem>
                             </asp:DropDownList>
                            <%--<select class="form-control">
                              <option>1</option>
                              <option>2</option>
                            </select>--%>
                          </div>
                        </div>
                      </div>
                    </div><!--end row-->
                    <div class="row">
                      <div class="col-md-12">
                        <div class="form-group row">
                          <%--<label class="col-sm-3 col-form-label">Application Deadline <img src="CIS Files/calendar-month-outline.png" id="Cal_Button" OnClick="Cal_Button_Click"></label>--%>
                            <label for="Aplication Deadline" class="col-sm-3 col-form-label">Application Deadline <asp:ImageButton ID="ImageButton1" runat="server" Height="19px" ImageUrl="CIS Files/calendar-month-outline.png" Width="24px" OnClick="Cal_Button_Click" style="margin-top: 0px" /></label>
                          <div class="col-sm-3">
                              <asp:TextBox ID="TxtCalendar" runat="server"></asp:TextBox>
                                <br />
                                <asp:Calendar ID="Job_Calendar" runat="server" OnSelectionChanged="Job_Calendar_SelectionChanged" class="form-control"></asp:Calendar>
                            <%--<input type="text" class="form-control" />--%>
                          </div>
                        </div>
                      </div>
                    </div><!--end row-->
                    <div class="row">
                      <div class="col-md-12">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">Link to Web-based Application</label>
                          <div class="col-sm-9">
                              <asp:TextBox ID="Txt_Link" runat="server" class="form-control"></asp:TextBox>
                            <%--<input type="text" class="form-control" />--%>
                          </div>
                        </div>
                      </div>
                    </div><!--end row-->
                    <div class="row">
                      <div class="col-md-12">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">Description</label>
                          <div class="col-sm-9">
                              <asp:TextBox ID="Txt_Description" runat="server" rows="6" cols="50"></asp:TextBox>
                            <%--<textarea rows="6" cols="50">
                            </textarea>--%>
                          </div>
                        </div>
                      </div>
                    </div><!--end row-->
                      <div class="row">
                      <div class="col-md-12">
                        <div class="form-group row">
                          <label class="col-sm-3 col-form-label">Status</label>
                          <div class="col-sm-9">
                              <asp:DropDownList ID="DropDownList_Status" runat="server" class="form-control">
                                <asp:ListItem>Created</asp:ListItem>
                                <asp:ListItem>Active</asp:ListItem>
                                <asp:ListItem>Closed</asp:ListItem>
                            </asp:DropDownList>
                          </div>
                        </div>
                      </div>
                    </div><!--end row-->
                         <asp:Button ID="Btn_Exit" runat="server" Text="Exit" OnClick="Btn_Exit_Click" class="btn btn-light"/>
                        <asp:Button ID="Btn_Save" runat="server" Text="Save " OnClick="Btn_Save_Click" class="btn btn-light" />
                        <asp:Button ID="Populate_Button" runat="server" Text="Populate" OnClick="Populate_Button_Click" class="btn btn-light" />
                    <%--<button type="submit" class="btn btn-light">Submit</button>
                    <button class="btn btn-light">Cancel</button>
                    <button class="btn btn-light">Populate</button>--%>
                  </form>
                </div>
              </div>
            </div>
        </div>
        <!-- content-wrapper ends -->
        <!-- partial:../../partials/_footer.html -->
        <footer class="footer">
          <div class="d-sm-flex justify-content-center justify-content-sm-between">
            <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Copyright © 2018 <a href="https://www.urbanui.com/" target="_blank">Urbanui</a>. All rights reserved.</span>
            <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Hand-crafted & made with <i class="mdi mdi-heart text-danger"></i></span>
          </div>
        </footer>
        <!-- partial -->
      </div>
      <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->
  <!-- plugins:js -->
  <script src="template/vendors/js/vendor.bundle.base.js"></script>
  <script src="template/vendors/js/vendor.bundle.addons.js"></script>
  <!-- endinject -->
  <!-- Plugin js for this page-->
  <!-- End plugin js for this page-->
  <!-- inject:js -->
  <script src="template/js/off-canvas.js"></script>
  <script src="template/js/hoverable-collapse.js"></script>
  <script src="template/js/template.js"></script>
  <script src="template/js/settings.js"></script>
  <script src="template/js/todolist.js"></script>
  <!-- endinject -->
  <!-- Custom js for this page-->
  <!-- End custom js for this page-->
</body>

</html>
<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
    <header>
      <style type="text/css">
            #Sec1 
            {
                float: left;
                width: 60%;
                /*margin-left: auto;
                margin-right: auto;*/
            }
      </style>
  </header>
    <section id="Sec1">
    <div class="form-group col-md-9">
        <h2>
            Job Listing
        </h2>
    <div class="form group col-md-3">
               <label for="Name">Job Name</label>
                <asp:TextBox ID="txt_Name" type="text" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="form group col-md-3">
               <label for="Address">Street Address</label>
                <asp:TextBox ID="txt_Street" type="text" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="form group col-md-3">
               <label for="City">City</label>
                <asp:TextBox ID="txt_City" type="text" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
         <div class="form group col-md-3">
               <label for="State">State</label>
             <asp:DropDownList ID="State_DropDown" runat="server">
                 <asp:ListItem Value="AL">Alabama</asp:ListItem>
	                <asp:ListItem Value="AK">Alaska</asp:ListItem>
	                <asp:ListItem Value="AZ">Arizona</asp:ListItem>
	                <asp:ListItem Value="AR">Arkansas</asp:ListItem>
	                <asp:ListItem Value="CA">California</asp:ListItem>
	                <asp:ListItem Value="CO">Colorado</asp:ListItem>
	                <asp:ListItem Value="CT">Connecticut</asp:ListItem>
	                <asp:ListItem Value="DC">District of Columbia</asp:ListItem>
	                <asp:ListItem Value="DE">Delaware</asp:ListItem>
	                <asp:ListItem Value="FL">Florida</asp:ListItem>
	                <asp:ListItem Value="GA">Georgia</asp:ListItem>
	                <asp:ListItem Value="HI">Hawaii</asp:ListItem>
	                <asp:ListItem Value="ID">Idaho</asp:ListItem>
	                <asp:ListItem Value="IL">Illinois</asp:ListItem>
	                <asp:ListItem Value="IN">Indiana</asp:ListItem>
	                <asp:ListItem Value="IA">Iowa</asp:ListItem>
	                <asp:ListItem Value="KS">Kansas</asp:ListItem>
	                <asp:ListItem Value="KY">Kentucky</asp:ListItem>
	                <asp:ListItem Value="LA">Louisiana</asp:ListItem>
	                <asp:ListItem Value="ME">Maine</asp:ListItem>
	                <asp:ListItem Value="MD">Maryland</asp:ListItem>
	                <asp:ListItem Value="MA">Massachusetts</asp:ListItem>
	                <asp:ListItem Value="MI">Michigan</asp:ListItem>
	                <asp:ListItem Value="MN">Minnesota</asp:ListItem>
	                <asp:ListItem Value="MS">Mississippi</asp:ListItem>
	                <asp:ListItem Value="MO">Missouri</asp:ListItem>
	                <asp:ListItem Value="MT">Montana</asp:ListItem>
	                <asp:ListItem Value="NE">Nebraska</asp:ListItem>
	                <asp:ListItem Value="NV">Nevada</asp:ListItem>
	                <asp:ListItem Value="NH">New Hampshire</asp:ListItem>
	                <asp:ListItem Value="NJ">New Jersey</asp:ListItem>
	                <asp:ListItem Value="NM">New Mexico</asp:ListItem>
	                <asp:ListItem Value="NY">New York</asp:ListItem>
	                <asp:ListItem Value="NC">North Carolina</asp:ListItem>
	                <asp:ListItem Value="ND">North Dakota</asp:ListItem>
	                <asp:ListItem Value="OH">Ohio</asp:ListItem>
	                <asp:ListItem Value="OK">Oklahoma</asp:ListItem>
	                <asp:ListItem Value="OR">Oregon</asp:ListItem>
	                <asp:ListItem Value="PA">Pennsylvania</asp:ListItem>
	                <asp:ListItem Value="RI">Rhode Island</asp:ListItem>
	                <asp:ListItem Value="SC">South Carolina</asp:ListItem>
	                <asp:ListItem Value="SD">South Dakota</asp:ListItem>
	                <asp:ListItem Value="TN">Tennessee</asp:ListItem>
	                <asp:ListItem Value="TX">Texas</asp:ListItem>
	                <asp:ListItem Value="UT">Utah</asp:ListItem>
	                <asp:ListItem Value="VT">Vermont</asp:ListItem>
	                <asp:ListItem Value="VA">Virginia</asp:ListItem>
	                <asp:ListItem Value="WA">Washington</asp:ListItem>
	                <asp:ListItem Value="WV">West Virginia</asp:ListItem>
	                <asp:ListItem Value="WI">Wisconsin</asp:ListItem>
	                <asp:ListItem Value="WY">Wyoming</asp:ListItem>
             </asp:DropDownList>
    </div>
   <div class="form group col-md-3">
        <label for="Conties">Counties</label>
       <asp:ListBox ID="ListBox_Counties" runat="server" SelectionMode="Multiple">
           <asp:ListItem>Accomack</asp:ListItem>
           <asp:ListItem>Albemarle</asp:ListItem>
           <asp:ListItem>Alleghany</asp:ListItem>
           <asp:ListItem>Amelia </asp:ListItem>
           <asp:ListItem>Arlington</asp:ListItem>
           <asp:ListItem>Augusta</asp:ListItem>
           <asp:ListItem>Bath</asp:ListItem>
           <asp:ListItem>Bedford</asp:ListItem>
           <asp:ListItem>Bland</asp:ListItem>
           <asp:ListItem>Botetourt</asp:ListItem>
           <asp:ListItem>Brunswich</asp:ListItem>
           <asp:ListItem>Buchana</asp:ListItem>
           <asp:ListItem>Buckingham</asp:ListItem>
           <asp:ListItem>Carroll</asp:ListItem>
           <asp:ListItem>Charlotte</asp:ListItem>
           <asp:ListItem>Chesterfield</asp:ListItem>
           <asp:ListItem>Dinwiddie</asp:ListItem>
           <asp:ListItem>Essex</asp:ListItem>
           <asp:ListItem>Fairfax</asp:ListItem>
           <asp:ListItem>Goochland</asp:ListItem>
           <asp:ListItem>Rockingham</asp:ListItem>
           <asp:ListItem>Smyth</asp:ListItem>
       </asp:ListBox>
    </div>
         <div class="form group col-md-3">
               <label for="Zip">Zip Code</label>
                <asp:TextBox ID="txt_Zip" type="text" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
        <div class="form group col-md-3">
               <label for="School">School</label>
            <asp:ListBox ID="ListBox_School" runat="server" SelectionMode="Multiple">
                <asp:ListItem>Broadway</asp:ListItem>
                <asp:ListItem>East Rockingham</asp:ListItem>
                <asp:ListItem>Spotswood</asp:ListItem>
                <asp:ListItem>Turner Ashby</asp:ListItem>
                <asp:ListItem>Rockingham Academy</asp:ListItem>
                <asp:ListItem>Massanutten Technical Center</asp:ListItem>
                <asp:ListItem>Elkton Middle School</asp:ListItem>
                <asp:ListItem>J. Frank Hillyard</asp:ListItem>
                <asp:ListItem>Montevideo</asp:ListItem>
                <asp:ListItem>Wilbur S. Pence</asp:ListItem>
                <asp:ListItem>Cub Run</asp:ListItem>
                <asp:ListItem>Elkton Elementary</asp:ListItem>
                <asp:ListItem>Fulks Run</asp:ListItem>
                <asp:ListItem>Lacey Spring</asp:ListItem>
                <asp:ListItem>Linville-Edom</asp:ListItem>
            </asp:ListBox>
            </div>
         <div class="form group col-md-3">
               <label for="type">Job Type</label>
             <asp:DropDownList ID="Type_DropDown" runat="server">
                 <asp:ListItem Value="Internship">Internship</asp:ListItem>
                  <asp:ListItem Value="Job Shadowing">Job Shadowing</asp:ListItem>
                  <asp:ListItem Value="Mentorship">Mentorship</asp:ListItem>
                  <asp:ListItem Value="Service Learning">Service Learning</asp:ListItem>
                  <asp:ListItem Value="Volunteer">Volunteer</asp:ListItem>
                  <asp:ListItem Value="Clinical Cooperative Education">Clinical Cooperative Education</asp:ListItem>
                 <asp:ListItem Value="Cooperative Education">Cooperative Education</asp:ListItem>
                  <asp:ListItem Value="Youth Regisered Apprenticeship">Youth Regisered Apprenticeship</asp:ListItem>
                  <asp:ListItem Value="Registered Appenticeships">Registered Apprenticeships</asp:ListItem>
                  <asp:ListItem Value="General Employement">General Employement</asp:ListItem>
             </asp:DropDownList>
            </div>
         <div class="form group col-md-3">
               <label for="Cluster">Career Cluster</label>
             <asp:DropDownList ID="Cluster_DropDown" runat="server">
                <asp:ListItem Value="Agriculture,Food & Natural Resources">Agriculture,Food & Natural Resources</asp:ListItem>
                 <asp:ListItem Value="Architecture & Construction">Architecture & Construction</asp:ListItem>
                 <asp:ListItem Value="Arts,Audio/Video Technology & Communications">Arts,Audio/Video Technology & Communications</asp:ListItem>
                 <asp:ListItem Value="Business Management & Administration">Business Management & Administration</asp:ListItem>
                 <asp:ListItem Value="Education & Training">Education & Training</asp:ListItem>
                 <asp:ListItem Value="Finance">Finance</asp:ListItem>
                 <asp:ListItem Value="Government & Public Administration">Government & Public Administration</asp:ListItem>
                 <asp:ListItem Value="Health Science">Health Science</asp:ListItem>
                 <asp:ListItem Value="Hospitality & Tourism">Hospitality & Tourism</asp:ListItem>
                 <asp:ListItem Value="Human Services">Human Services</asp:ListItem>
                 <asp:ListItem Value="Law,Public Safety,Corrections & Security">Law,Public Safety,Corrections & Security</asp:ListItem>
                 <asp:ListItem Value="Manufacturing">Manufacturing</asp:ListItem>
                 <asp:ListItem Value="Marketing">Marketing</asp:ListItem>
                 <asp:ListItem Value="Science,Technology,Enginering & Mathematics">Science,Technology,Enginering & Mathematics</asp:ListItem>
                 <asp:ListItem Value="Transportation,Distribution & Logistics">Transportation,Distribution & Logistics</asp:ListItem>
             </asp:DropDownList>
            </div>
         <div class="form group col-md-3">
               <label for="Occupation">Occupation</label>
             <asp:DropDownList ID="Occupation_DropDown" runat="server">
                 <asp:ListItem>Aquacultural Managers</asp:ListItem>
                 <asp:ListItem>Farm and Ranch Managers</asp:ListItem>
                 <asp:ListItem>Farm Labor Contractors</asp:ListItem>
                 <asp:ListItem>Nonfarm Animal Caretakers</asp:ListItem>
                 <asp:ListItem>Environmental Engineering Technicians </asp:ListItem>
                 <asp:ListItem>Hazardous Material Removal Workers</asp:ListItem>
                 <asp:ListItem>Carpenters</asp:ListItem>
                 <asp:ListItem>Construction Carpenters</asp:ListItem>
                 <asp:ListItem>Crane Operators and Tenders</asp:ListItem>
                 <asp:ListItem>Dredge Operators</asp:ListItem>
             </asp:DropDownList>
            </div>
        <div class="form group col-md-3">
            <label for="Aplication Deadline">Application Deadline</label>
            <asp:ImageButton ID="Cal_Button" runat="server" Height="44px" ImageUrl="~/CIS Files/calendar.png" Width="48px" OnClick="Cal_Button_Click" style="margin-top: 0px" /> 
            <asp:TextBox ID="TxtCalendar" runat="server"></asp:TextBox>
            <br />
            <asp:Calendar ID="Job_Calendar" runat="server" OnSelectionChanged="Job_Calendar_SelectionChanged"></asp:Calendar>
 </div>
        <div>
            <label for="Link">Link to Web-based Application or Website</label>
            <asp:TextBox ID="Txt_Link" runat="server"></asp:TextBox>
        </div>
        <div>
            <label for="Description">Description</label>
            <asp:TextBox ID="Txt_Description" runat="server"></asp:TextBox>
        </div>
        <div>
            <label for="Status">Status</label>
            <asp:DropDownList ID="DropDownList_Status" runat="server">
                <asp:ListItem>Created</asp:ListItem>
                <asp:ListItem>Active</asp:ListItem>
                <asp:ListItem>Closed</asp:ListItem>
            </asp:DropDownList>
        </div>
       <div>
        <asp:Button ID="Btn_Exit" runat="server" Text="Exit" OnClick="Btn_Exit_Click" />
        </div>
      
    <div>
        <asp:Button ID="Btn_Save" runat="server" Text="Save " OnClick="Btn_Save_Click" />
        <asp:Button ID="Populate_Button" runat="server" OnClick="Populate_Button_Click" Text="Populate" />
        </div>
        <div>
    
  </section>
</asp:Content>--%>


<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
    <header>
      <style type="text/css">
            #Sec1 
            {
                float: left;
                width: 60%;
                /*margin-left: auto;
                margin-right: auto;*/
            }
      </style>
  </header>
    <section id="Sec1">
    <div class="form-group col-md-9">
        <h2>
            Job Listing
        </h2>
    <div class="form group col-md-3">
               <label for="Name">Job Name</label>
                <asp:TextBox ID="txt_Name" type="text" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="form group col-md-3">
               <label for="Address">Street Address</label>
                <asp:TextBox ID="txt_Street" type="text" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="form group col-md-3">
               <label for="City">City</label>
                <asp:TextBox ID="txt_City" type="text" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
         <div class="form group col-md-3">
               <label for="State">State</label>
             <asp:DropDownList ID="State_DropDown" runat="server">
                 <asp:ListItem Value="AL">Alabama</asp:ListItem>
	                <asp:ListItem Value="AK">Alaska</asp:ListItem>
	                <asp:ListItem Value="AZ">Arizona</asp:ListItem>
	                <asp:ListItem Value="AR">Arkansas</asp:ListItem>
	                <asp:ListItem Value="CA">California</asp:ListItem>
	                <asp:ListItem Value="CO">Colorado</asp:ListItem>
	                <asp:ListItem Value="CT">Connecticut</asp:ListItem>
	                <asp:ListItem Value="DC">District of Columbia</asp:ListItem>
	                <asp:ListItem Value="DE">Delaware</asp:ListItem>
	                <asp:ListItem Value="FL">Florida</asp:ListItem>
	                <asp:ListItem Value="GA">Georgia</asp:ListItem>
	                <asp:ListItem Value="HI">Hawaii</asp:ListItem>
	                <asp:ListItem Value="ID">Idaho</asp:ListItem>
	                <asp:ListItem Value="IL">Illinois</asp:ListItem>
	                <asp:ListItem Value="IN">Indiana</asp:ListItem>
	                <asp:ListItem Value="IA">Iowa</asp:ListItem>
	                <asp:ListItem Value="KS">Kansas</asp:ListItem>
	                <asp:ListItem Value="KY">Kentucky</asp:ListItem>
	                <asp:ListItem Value="LA">Louisiana</asp:ListItem>
	                <asp:ListItem Value="ME">Maine</asp:ListItem>
	                <asp:ListItem Value="MD">Maryland</asp:ListItem>
	                <asp:ListItem Value="MA">Massachusetts</asp:ListItem>
	                <asp:ListItem Value="MI">Michigan</asp:ListItem>
	                <asp:ListItem Value="MN">Minnesota</asp:ListItem>
	                <asp:ListItem Value="MS">Mississippi</asp:ListItem>
	                <asp:ListItem Value="MO">Missouri</asp:ListItem>
	                <asp:ListItem Value="MT">Montana</asp:ListItem>
	                <asp:ListItem Value="NE">Nebraska</asp:ListItem>
	                <asp:ListItem Value="NV">Nevada</asp:ListItem>
	                <asp:ListItem Value="NH">New Hampshire</asp:ListItem>
	                <asp:ListItem Value="NJ">New Jersey</asp:ListItem>
	                <asp:ListItem Value="NM">New Mexico</asp:ListItem>
	                <asp:ListItem Value="NY">New York</asp:ListItem>
	                <asp:ListItem Value="NC">North Carolina</asp:ListItem>
	                <asp:ListItem Value="ND">North Dakota</asp:ListItem>
	                <asp:ListItem Value="OH">Ohio</asp:ListItem>
	                <asp:ListItem Value="OK">Oklahoma</asp:ListItem>
	                <asp:ListItem Value="OR">Oregon</asp:ListItem>
	                <asp:ListItem Value="PA">Pennsylvania</asp:ListItem>
	                <asp:ListItem Value="RI">Rhode Island</asp:ListItem>
	                <asp:ListItem Value="SC">South Carolina</asp:ListItem>
	                <asp:ListItem Value="SD">South Dakota</asp:ListItem>
	                <asp:ListItem Value="TN">Tennessee</asp:ListItem>
	                <asp:ListItem Value="TX">Texas</asp:ListItem>
	                <asp:ListItem Value="UT">Utah</asp:ListItem>
	                <asp:ListItem Value="VT">Vermont</asp:ListItem>
	                <asp:ListItem Value="VA">Virginia</asp:ListItem>
	                <asp:ListItem Value="WA">Washington</asp:ListItem>
	                <asp:ListItem Value="WV">West Virginia</asp:ListItem>
	                <asp:ListItem Value="WI">Wisconsin</asp:ListItem>
	                <asp:ListItem Value="WY">Wyoming</asp:ListItem>
             </asp:DropDownList>
    </div>
   <div class="form group col-md-3">
        <label for="Conties">Counties</label>
       <asp:ListBox ID="ListBox_Counties" runat="server" SelectionMode="Multiple">
           <asp:ListItem>Accomack</asp:ListItem>
           <asp:ListItem>Albemarle</asp:ListItem>
           <asp:ListItem>Alleghany</asp:ListItem>
           <asp:ListItem>Amelia </asp:ListItem>
           <asp:ListItem>Arlington</asp:ListItem>
           <asp:ListItem>Augusta</asp:ListItem>
           <asp:ListItem>Bath</asp:ListItem>
           <asp:ListItem>Bedford</asp:ListItem>
           <asp:ListItem>Bland</asp:ListItem>
           <asp:ListItem>Botetourt</asp:ListItem>
           <asp:ListItem>Brunswich</asp:ListItem>
           <asp:ListItem>Buchana</asp:ListItem>
           <asp:ListItem>Buckingham</asp:ListItem>
           <asp:ListItem>Carroll</asp:ListItem>
           <asp:ListItem>Charlotte</asp:ListItem>
           <asp:ListItem>Chesterfield</asp:ListItem>
           <asp:ListItem>Dinwiddie</asp:ListItem>
           <asp:ListItem>Essex</asp:ListItem>
           <asp:ListItem>Fairfax</asp:ListItem>
           <asp:ListItem>Goochland</asp:ListItem>
           <asp:ListItem>Rockingham</asp:ListItem>
           <asp:ListItem>Smyth</asp:ListItem>

       </asp:ListBox>
    </div>
         <div class="form group col-md-3">
               <label for="Zip">Zip Code</label>
                <asp:TextBox ID="txt_Zip" type="text" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
        <div class="form group col-md-3">
               <label for="School">School</label>
            <asp:ListBox ID="ListBox_School" runat="server" SelectionMode="Multiple">
                <asp:ListItem>Broadway</asp:ListItem>
                <asp:ListItem>East Rockingham</asp:ListItem>
                <asp:ListItem>Spotswood</asp:ListItem>
                <asp:ListItem>Turner Ashby</asp:ListItem>
                <asp:ListItem>Rockingham Academy</asp:ListItem>
                <asp:ListItem>Massanutten Technical Center</asp:ListItem>
                <asp:ListItem>Elkton Middle School</asp:ListItem>
                <asp:ListItem>J. Frank Hillyard</asp:ListItem>
                <asp:ListItem>Montevideo</asp:ListItem>
                <asp:ListItem>Wilbur S. Pence</asp:ListItem>
                <asp:ListItem>Cub Run</asp:ListItem>
                <asp:ListItem>Elkton Elementary</asp:ListItem>
                <asp:ListItem>Fulks Run</asp:ListItem>
                <asp:ListItem>Lacey Spring</asp:ListItem>
                <asp:ListItem>Linville-Edom</asp:ListItem>

            </asp:ListBox>
            </div>
         <div class="form group col-md-3">
               <label for="type">Job Type</label>
             <asp:DropDownList ID="Type_DropDown" runat="server">
                 <asp:ListItem Value="Internship">Internship</asp:ListItem>
                  <asp:ListItem Value="Job Shadowing">Job Shadowing</asp:ListItem>
                  <asp:ListItem Value="Mentorship">Mentorship</asp:ListItem>
                  <asp:ListItem Value="Service Learning">Service Learning</asp:ListItem>
                  <asp:ListItem Value="Volunteer">Volunteer</asp:ListItem>
                  <asp:ListItem Value="Clinical Cooperative Education">Clinical Cooperative Education</asp:ListItem>
                 <asp:ListItem Value="Cooperative Education">Cooperative Education</asp:ListItem>
                  <asp:ListItem Value="Youth Regisered Apprenticeship">Youth Regisered Apprenticeship</asp:ListItem>
                  <asp:ListItem Value="Registered Appenticeships">Registered Apprenticeships</asp:ListItem>
                  <asp:ListItem Value="General Employement">General Employement</asp:ListItem>
             </asp:DropDownList>
            </div>
         <div class="form group col-md-3">
               <label for="Cluster">Career Cluster</label>
             <asp:DropDownList ID="Cluster_DropDown" runat="server">
                <asp:ListItem Value="Agriculture,Food & Natural Resources">Agriculture,Food & Natural Resources</asp:ListItem>
                 <asp:ListItem Value="Architecture & Construction">Architecture & Construction</asp:ListItem>
                 <asp:ListItem Value="Arts,Audio/Video Technology & Communications">Arts,Audio/Video Technology & Communications</asp:ListItem>
                 <asp:ListItem Value="Business Management & Administration">Business Management & Administration</asp:ListItem>
                 <asp:ListItem Value="Education & Training">Education & Training</asp:ListItem>
                 <asp:ListItem Value="Finance">Finance</asp:ListItem>
                 <asp:ListItem Value="Government & Public Administration">Government & Public Administration</asp:ListItem>
                 <asp:ListItem Value="Health Science">Health Science</asp:ListItem>
                 <asp:ListItem Value="Hospitality & Tourism">Hospitality & Tourism</asp:ListItem>
                 <asp:ListItem Value="Human Services">Human Services</asp:ListItem>
                 <asp:ListItem Value="Law,Public Safety,Corrections & Security">Law,Public Safety,Corrections & Security</asp:ListItem>
                 <asp:ListItem Value="Manufacturing">Manufacturing</asp:ListItem>
                 <asp:ListItem Value="Marketing">Marketing</asp:ListItem>
                 <asp:ListItem Value="Science,Technology,Enginering & Mathematics">Science,Technology,Enginering & Mathematics</asp:ListItem>
                 <asp:ListItem Value="Transportation,Distribution & Logistics">Transportation,Distribution & Logistics</asp:ListItem>
             </asp:DropDownList>
            </div>
         <div class="form group col-md-3">
               <label for="Occupation">Occupation</label>
             <asp:DropDownList ID="Occupation_DropDown" runat="server">
                 <asp:ListItem>Aquacultural Managers</asp:ListItem>
                 <asp:ListItem>Farm and Ranch Managers</asp:ListItem>
                 <asp:ListItem>Farm Labor Contractors</asp:ListItem>
                 <asp:ListItem>Nonfarm Animal Caretakers</asp:ListItem>
                 <asp:ListItem>Environmental Engineering Technicians </asp:ListItem>
                 <asp:ListItem>Hazardous Material Removal Workers</asp:ListItem>
                 <asp:ListItem>Carpenters</asp:ListItem>
                 <asp:ListItem>Construction Carpenters</asp:ListItem>
                 <asp:ListItem>Crane Operators and Tenders</asp:ListItem>
                 <asp:ListItem>Dredge Operators</asp:ListItem>
             </asp:DropDownList>
            </div>
        <div class="form group col-md-3">
            <label for="Aplication Deadline">Application Deadline</label>
            <asp:ImageButton ID="Cal_Button" runat="server" Height="44px" ImageUrl="~/CIS Files/calendar.png" Width="48px" OnClick="Cal_Button_Click" style="margin-top: 0px" /> 
            <asp:TextBox ID="TxtCalendar" runat="server"></asp:TextBox>
            <br />
            <asp:Calendar ID="Job_Calendar" runat="server" OnSelectionChanged="Job_Calendar_SelectionChanged"></asp:Calendar>
 </div>
        <div>
            <label for="Link">Link to Web-based Application or Website</label>
            <asp:TextBox ID="Txt_Link" runat="server"></asp:TextBox>
        </div>
        <div>
            <label for="Description">Description</label>
            <asp:TextBox ID="Txt_Description" runat="server"></asp:TextBox>
        </div>
        <div>
            <label for="Status">Status</label>
            <asp:DropDownList ID="DropDownList_Status" runat="server">
                <asp:ListItem>Created</asp:ListItem>
                <asp:ListItem>Active</asp:ListItem>
                <asp:ListItem>Closed</asp:ListItem>

            </asp:DropDownList>
        </div>
       <div>
        <asp:Button ID="Btn_Exit" runat="server" Text="Exit" OnClick="Btn_Exit_Click" />
        </div>
      
    <div>
        <asp:Button ID="Btn_Save" runat="server" Text="Save " OnClick="Btn_Save_Click" />
        <asp:Button ID="Populate_Button" runat="server" OnClick="Populate_Button_Click" Text="Populate" />
        </div>
    
  </section>
</asp:Content>--%>
