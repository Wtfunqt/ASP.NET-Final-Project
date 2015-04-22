<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeFile="Videos.aspx.cs" Inherits="Videos" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DropDownList ID="dropDownGenres" runat="server"  DataSourceID="SqlDataSourceAllGenres" DataTextField="genre" DataValueField="genre" Height="55px" Width="159px" OnSelectedIndexChanged="dropDownGenres_SelectedIndexChanged" >
        </asp:DropDownList>
        <asp:Button ID="Button1" runat="server" Text="Submit" />
        <asp:SqlDataSource ID="SqlDataSourceAllGenres" runat="server" ConnectionString="<%$ ConnectionStrings:SanjayDBConnectionString %>" SelectCommand="SELECT DISTINCT [genre] FROM [genres]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" DataSourceID="SqlDataSourceMoviesByGenre" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
        <asp:SqlDataSource ID="SqlDataSourceMoviesByGenre" runat="server" ConnectionString="<%$ ConnectionStrings:SanjayDBConnectionString %>" SelectCommand="select title from allmovies a join genres g on a.id = g.id where (g.genre = @genre)" >
            <SelectParameters>
                <asp:ControlParameter ControlID="dropDownGenres" DefaultValue="drama" Name="genre"  PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    <h3>Your application description page.</h3>
    <p>Use this area to provide additional information.</p>
</asp:Content>