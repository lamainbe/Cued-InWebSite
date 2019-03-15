<%@ Page Title="" Language="C#" MasterPageFile="~/CuedInMasterPage.master" AutoEventWireup="true" CodeFile="JobListings.aspx.cs" Inherits="JobListings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
                <asp:TextBox ID="txtStreet" type="text" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="form group col-md-3">
               <label for="City">City</label>
                <asp:TextBox ID="txt_Zip" type="text" runat="server" CssClass="form-control"></asp:TextBox>
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
               <label for="County">County</label>
               <asp:DropDownList ID="County_DropDown" runat="server"></asp:DropDownList>
    </div>
         <div class="form group col-md-3">
               <label for="Zip">Zip Code</label>
                <asp:TextBox ID="txtZip" type="text" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
        <div class="form group col-md-3">
               <label for="School">School</label>
             <asp:DropDownList ID="School_Dropdown" runat="server"></asp:DropDownList>
            </div>
     <div class="form group col-md-3">
               <label for="Zip">Zip Code</label>
       <asp:TextBox ID="TextBox2" type="text" runat="server" CssClass="form-control"></asp:TextBox>
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
             <asp:DropDownList ID="Occupation_DropDown" runat="server"></asp:DropDownList>
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
        <asp:Button ID="Btn_Exit" runat="server" Text="Exit" OnClick="Btn_Exit_Click" />
        </div>
      
    <div>
        <asp:Button ID="Btn_Save" runat="server" Text="Save " OnClick="Btn_Save_Click" />
        </div>
  </section>
</asp:Content>
