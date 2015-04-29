<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPage.master" AutoEventWireup="true" CodeFile="VideoGenre.aspx.cs" Inherits="VideoGenre" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="genre" DataValueField="genre" AutoPostBack="True" Height="16px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False" Font-Size="Larger"></asp:Label>
    <asp:Label ID="lblSelectSomething" runat="server" Text="Label" Visible="False" Font-Size="Larger"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="id" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="750px" AllowPaging="True">
        <Columns>
            <asp:CommandField ShowSelectButton="True" ButtonType="Button" >
            <ItemStyle Width="30px" />
            </asp:CommandField>
            <asp:BoundField DataField="id" HeaderText="ID" ReadOnly="True" SortExpression="id" InsertVisible="False" >
            <ItemStyle Width="15px" />
            </asp:BoundField>
            <asp:BoundField DataField="title" HeaderText="Title of the move" SortExpression="title" />
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
    <asp:Button ID="btnAddToPlaylist" runat="server" OnClick="btnAddToPlaylist_Click" Text="Add to Playlist" />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AdemirDBConnectionString %>" SelectCommand="select a.id,title from allmovies a join genres g on a.id = g.id where (g.genre = @genre)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" DefaultValue="comedy" Name="genre" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AdemirDBConnectionString %>" SelectCommand="SELECT DISTINCT [genre] FROM [genres] ORDER BY [genre]"></asp:SqlDataSource>
    <br /><br /><br />
    <br />
    <a id="linkToLogin"></a>
    
    
    </asp:Content>

