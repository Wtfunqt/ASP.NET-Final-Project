<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPage.master" AutoEventWireup="true" CodeFile="Videos.aspx.cs" Inherits="Videos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Button ID="btnAddToPlaylist" runat="server" Text="Add To Playlist" OnClick="btnAddToPlaylist_Click" />
    <asp:Label ID="lblSelectSomething" runat="server" Text="Label" Visible="False" Font-Size="Larger"></asp:Label>
    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False" Font-Size="Larger"></asp:Label>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AdemirDBConnectionString %>" SelectCommand="select am.id, am.title, am.prodyear, replace(am.company, '\r\n', ','), am.director, am.editor, s.summary from summaries s join allmovies am on s.id=am.id"></asp:SqlDataSource>

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" DataKeyNames="id" Width="750px">
        <Columns>
            <asp:CommandField ShowSelectButton="True" ButtonType="Button" >
            <ItemStyle Width="20px" />
            </asp:CommandField>
            <asp:BoundField DataField="id" HeaderText="ID" SortExpression="id" InsertVisible="False" ReadOnly="True" >
            <ControlStyle Font-Underline="False" />
            <ItemStyle Width="15px" />
            </asp:BoundField>
            <asp:BoundField DataField="title" HeaderText="Title of the movie" SortExpression="title" >
            <ItemStyle Width="50px" />
            </asp:BoundField>
            <asp:BoundField DataField="prodyear" HeaderText="Production Year" SortExpression="prodyear" >
            <ItemStyle Width="25px" />
            </asp:BoundField>
            <asp:BoundField DataField="Column1" HeaderText="Company" SortExpression="Column1" ReadOnly="True" />
            <asp:BoundField DataField="director" HeaderText="Director" SortExpression="director" />
            <asp:BoundField DataField="editor" HeaderText="Editor" SortExpression="editor" />
            <asp:BoundField DataField="summary" HeaderText="Summary" SortExpression="summary" >
            <ItemStyle Width="250px" />
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

    <br /> 
    <br />

</asp:Content>

