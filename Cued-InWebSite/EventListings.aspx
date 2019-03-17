<%@ Page Title="" Language="C#" MasterPageFile="~/CuedInMasterPage.master" AutoEventWireup="true" CodeFile="EventListings.aspx.cs" Inherits="EventListings" %>

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
          .form-control {}
      </style>
  </header>
    <section id="Sec1">
    <div class="form-group col-md-9">
        <h2>
            Event Listing
        </h2>
    <div class="form group col-md-3">
               <label for="Name">Event Name</label>
                <asp:TextBox ID="txt_Name" type="text" runat="server" CssClass="form-control" Width="253px"></asp:TextBox>
    </div>
                 <div class="form group col-md-3">
               <label for="type">Event Type</label>
             <asp:DropDownList ID="Type_DropDown" runat="server">
                 <asp:ListItem Value="Networking">Networking</asp:ListItem>
                  <asp:ListItem Value="Workshop">Workshop</asp:ListItem>
                  <asp:ListItem Value="Seminar">Seminar</asp:ListItem>
             </asp:DropDownList>
            </div>
                <div class="form group col-md-3">
               <label for="Affiliated School(s)">Affiliated School(s)</label>
            <asp:ListBox ID="ListBox_School" runat="server" SelectionMode="Multiple" OnSelectedIndexChanged="ListBox_School_SelectedIndexChanged">
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
            <label for="Date">Date</label>
            <asp:ImageButton ID="Cal_Button" runat="server" Height="44px" ImageUrl="~/CIS Files/calendar.png" Width="48px" OnClick="Cal_Button_Click" style="margin-top: 0px" /> 
            <asp:TextBox ID="TxtCalendar" runat="server"></asp:TextBox>
            <br />
            <asp:Calendar ID="Job_Calendar" runat="server" OnSelectionChanged="Job_Calendar_SelectionChanged"></asp:Calendar>
 </div>
        <div class="form group col-md-3">
               <label for="Time">Time</label>
                <asp:TextBox ID="TextBox1" type="text" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div>
            <label for="Location">Location</label>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                <asp:ListItem>School</asp:ListItem>
                <asp:ListItem>Offsite</asp:ListItem>
            </asp:RadioButtonList>
        </div>
    <div class="form group col-md-3"Visible="false">
        <asp:Label ID="lbl_Street" runat="server" Text="Street" Visible="false"></asp:Label>
                <asp:TextBox ID="txt_Street" type="text" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>
    </div>
    <div class="form group col-md-3">
        <asp:Label ID="lbl_City" runat="server" Text="City" Visible="false"></asp:Label>
        <asp:TextBox ID="txt_City" type="text" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>
    </div>
         <div class="form group col-md-3">
             <asp:Label ID="lbl_State" runat="server" Text="State" Visible="false"></asp:Label>
             <asp:DropDownList ID="State_DropDown" runat="server" Visible="false">
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
       <asp:Label ID="lbl_Counties" runat="server" Text="Counties" Visible="false"></asp:Label>
       <asp:ListBox ID="ListBox_Counties" runat="server" SelectionMode="Multiple" Visible="false">
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
             <asp:Label ID="lbl_Zip" runat="server" Text="Zip Code" Visible="false"></asp:Label>
                <asp:TextBox ID="txt_Zip" type="text" runat="server" CssClass="form-control" Visible="false"></asp:TextBox>
    </div>
        <div>
            <label for="Description">Description</label>
            <asp:TextBox ID="Txt_Description" runat="server" Height="118px" Width="341px"></asp:TextBox>
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
</asp:Content>

