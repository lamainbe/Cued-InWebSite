<%@ Page Title="" Language="C#" MasterPageFile="~/CuedInMasterPage.master" AutoEventWireup="true" CodeFile="ScholarshipListings.aspx.cs" Inherits="ScholarshipListings" %>

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
        </div>
    <div class="form group col-md-3">
               <label for="Name">Scholarship Name</label>
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
               <label for="type">Funding Organization</label>
             <asp:TextBox ID="txt_fundingOrg" runat="server" style="margin-left: 11px"></asp:TextBox>
               <br />
               <asp:Label ID="LblRecipients" runat="server" Text="No. of Recipients"></asp:Label>
               <asp:DropDownList ID="DropDown_Recipients" runat="server" style="margin-left: 37px">
                   <asp:ListItem Value="1"></asp:ListItem>
                   <asp:ListItem Value="2"></asp:ListItem>
                   <asp:ListItem Value="3"></asp:ListItem>
                   <asp:ListItem Value="4"></asp:ListItem>
                   <asp:ListItem Value="5"></asp:ListItem>
                   <asp:ListItem Value="6"></asp:ListItem>
                   <asp:ListItem Value="7"></asp:ListItem>
                   <asp:ListItem Value="8"></asp:ListItem>
                   <asp:ListItem Value="9"></asp:ListItem>
                   <asp:ListItem Value="10"></asp:ListItem>
                   <asp:ListItem Value="11"></asp:ListItem>
                   <asp:ListItem Value="12"></asp:ListItem>
                   <asp:ListItem Value="13"></asp:ListItem>
                   <asp:ListItem Value="14"></asp:ListItem>
                   <asp:ListItem Value="15"></asp:ListItem>
               </asp:DropDownList>
            </div>
         <div class="form group col-md-3">
               <label for="Cluster">Scholarship Amount</label> &nbsp;
               <asp:Label ID="Lbl_money" runat="server" Text="$" Height="24px" Width="5px"></asp:Label>
             <asp:TextBox ID="txt_Amount" runat="server" style="margin-left: 4px"></asp:TextBox>
             
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
            <asp:TextBox ID="Txt_Description" runat="server" Height="16px" Width="443px"></asp:TextBox>
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

