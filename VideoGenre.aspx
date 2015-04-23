<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="VideoGenre.aspx.cs" Inherits="VideoGenre" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="genre" DataValueField="genre" AutoPostBack="True">
    </asp:DropDownList>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="title" HeaderText="Title of the Movie" SortExpression="title" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AdemirDBConnectionString %>" SelectCommand="select title from allmovies a join genres g on a.id = g.id where (g.genre = @genre)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" DefaultValue="comedy" Name="genre" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AdemirDBConnectionString %>" SelectCommand="SELECT DISTINCT [genre] FROM [genres] ORDER BY [genre]"></asp:SqlDataSource>
</asp:Content>

