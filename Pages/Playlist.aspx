<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPage.master" AutoEventWireup="true" CodeFile="Playlist.aspx.cs" Inherits="Playlist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    
    
        <asp:SqlDataSource ID="SqlDataSourceForAllPlaylistByUserName" runat="server" ConnectionString="<%$ ConnectionStrings:AdemirDBConnectionString %>" SelectCommand="select p.userid, a.title, a.prodyear from allmovies a join playlists p on a.id = p.movieid join accounts ac on p.userid = ac.id WHERE ([username] = @username) order by p.playlistid desc ">
            <SelectParameters>
                <asp:SessionParameter Name="username" SessionField="login" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    <asp:Button ID="btnAddToPlaylist" PostBackUrl="~/Pages/Playlist.aspx" runat="server" OnClick="btnDeleteFromPlaylist_Click" Text="Delete from Playlist" />
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
    <asp:Label ID="lblSelectSomething" runat="server" Text="Label" Visible="False"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceForAllPlaylistByUserName" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="750px" AllowPaging="True">
            <Columns>
                <asp:CommandField ShowSelectButton="True" ButtonType="Button" >
                <ItemStyle Width="30px" />
                </asp:CommandField>
                <asp:BoundField DataField="title" HeaderText="Title of the movie" SortExpression="title" />
                <asp:BoundField DataField="prodyear" HeaderText="Production Year" SortExpression="prodyear" >
                <ItemStyle Width="25px" />
                </asp:BoundField>
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
    <br /><br /><br />
    <br />
    <a id="linkToLogin"></a>
    </asp:Content>

