<%@ Page Title="" Language="C#" MasterPageFile="~/CuedInMasterPage.master" AutoEventWireup="true" CodeFile="JobListingDisplay.aspx.cs" Inherits="JobListingDisplay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div>
        <asp:GridView ID="JobListingGridView" runat="server" AutoGenerateColumns="False"  Height="232px" Width="1152px" AllowSorting="True" DataSourceID="SqlDataSource1" DataKeyNames="JListingID" >
            <Columns>
                <asp:BoundField DataField="JListingID" HeaderText="JListingID" SortExpression="JListingID" ReadOnly="True" Visible = "false">
                </asp:BoundField>
                <asp:BoundField DataField="ListingName" HeaderText="ListingName" SortExpression="ListingName">
                </asp:BoundField>
                <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type">
                </asp:BoundField>
                <asp:BoundField DataField="DatePosted" HeaderText="DatePosted" SortExpression="DatePosted">
                </asp:BoundField>
                <asp:BoundField DataField="Deadline" HeaderText="Deadline" SortExpression="Deadline">
                </asp:BoundField>
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status">
                </asp:BoundField>
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:TemplateField>
                    <ItemTemplate>
                 <asp:HyperLink ID="lnkEdit" Text = "Edit" NavigateUrl = "~/EditJob.aspx" runat="server" ></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowDeleteButton="true"/>
            </Columns>
            
         </asp:GridView>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" SelectCommand="SELECT JobListing.JListingID, Listing.ListingName, JobListing.Type, Listing.DatePosted, JobListing.Deadline, Listing.Status, Listing.City
FROM            JobListing INNER JOIN
                         Listing ON JobListing.JListingID = Listing.ListingID"></asp:SqlDataSource>
      </div>
</asp:Content>

