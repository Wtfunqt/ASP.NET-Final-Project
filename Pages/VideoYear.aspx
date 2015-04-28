<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPage.master" AutoEventWireup="true" CodeFile="VideoYear.aspx.cs" Inherits="VideoYear" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="prodyear" DataValueField="prodyear" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SanjayDBConnectionString %>" SelectCommand="select id,title from allmovies where (prodyear = @prodyear)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" DefaultValue="1990" Name="prodyear" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" DataKeyNames="id">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" ReadOnly="True" />
            <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
        </Columns>
    </asp:GridView>
    
    <asp:Button ID="btnAddToPlaylist" runat="server" Text="Add To Playlist" OnClick="btnAddToPlaylist_Click" />
    <br /> 
    <asp:Label ID="lblSelectSomething" runat="server" Text="Label" Visible="False"></asp:Label>
    <br /><asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SanjayDBConnectionString %>" SelectCommand="SELECT DISTINCT [prodyear] FROM [allmovies]"></asp:SqlDataSource>
    </asp:Content>

