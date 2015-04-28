<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPage.master" AutoEventWireup="true" CodeFile="Playlist.aspx.cs" Inherits="Playlist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    
    
        <asp:SqlDataSource ID="SqlDataSourceForAllPlaylistByUserName" runat="server" ConnectionString="<%$ ConnectionStrings:AdemirDBConnectionString %>" SelectCommand="select p.userid, a.title, a.prodyear from allmovies a join playlists p on a.id = p.movieid join accounts ac on p.userid = ac.id WHERE ([username] = @username) order by p.playlistid desc ">
            <SelectParameters>
                <asp:SessionParameter Name="username" SessionField="login" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceForAllPlaylistByUserName" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                <asp:BoundField DataField="prodyear" HeaderText="prodyear" SortExpression="prodyear" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
    <asp:Button ID="btnAddToPlaylist" PostBackUrl="~/Pages/Playlist.aspx" runat="server" OnClick="btnDeleteFromPlaylist_Click" Text="Delete from Playlist" />
    <br /><br /><br /><asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
    <br />
    <asp:Label ID="lblSelectSomething" runat="server" Text="Label" Visible="False"></asp:Label>
    <a id="linkToLogin"></a>
    <h1>Content to be changed!</h1>
</asp:Content>

