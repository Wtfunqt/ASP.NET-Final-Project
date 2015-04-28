<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPage.master" AutoEventWireup="true" CodeFile="VideoGenre.aspx.cs" Inherits="VideoGenre" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="genre" DataValueField="genre" AutoPostBack="True" Height="16px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="id">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SanjayDBConnectionString %>" SelectCommand="select a.id,title from allmovies a join genres g on a.id = g.id where (g.genre = @genre)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" DefaultValue="comedy" Name="genre" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:Button ID="btnAddToPlaylist" runat="server" OnClick="btnAddToPlaylist_Click" Text="Add to Playlist" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SanjayDBConnectionString %>" SelectCommand="SELECT DISTINCT [genre] FROM [genres] ORDER BY [genre]"></asp:SqlDataSource>
    <br /><br /><br /><asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
    <br />
    <asp:Label ID="lblSelectSomething" runat="server" Text="Label" Visible="False"></asp:Label>
    <a id="linkToLogin"></a>
    
    
    </asp:Content>

