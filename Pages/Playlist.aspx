<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPage.master" AutoEventWireup="true" CodeFile="Playlist.aspx.cs" Inherits="Playlist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    

    
        <asp:SqlDataSource ID="SqlDataSourceForAllPlaylistByUserName" runat="server" ConnectionString="<%$ ConnectionStrings:SanjayDBConnectionString %>"  
            DeleteCommand="delete from playlists 
where ([playlistid] = @id)" SelectCommand="select a.title, a.prodyear from allmovies a join playlists p on a.id = p.movieid join accounts ac on p.userid = ac.id WHERE ([username] = @username) order by p.playlistid desc ">
            <SelectParameters>
                <asp:SessionParameter Name="username" SessionField="login" Type="String" />
            </SelectParameters>
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceForAllPlaylistByUserName">
            <Columns>
                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                <asp:BoundField DataField="prodyear" HeaderText="prodyear" SortExpression="prodyear" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
        
    <h1>Content to be changed!</h1>
</asp:Content>

