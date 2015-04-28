<%@ Page Title="" Language="C#" MasterPageFile="~/OwnersPages/MasterPageOwner.master" AutoEventWireup="true" CodeFile="MoviesAdvanced.aspx.cs" Inherits="Styles_MoviesDescription" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>MovieList</h1>
    <asp:Button ID="btnAddMovie" runat="server" PostBackUrl="~/OwnersPages/Movies_Add.aspx" Text="Add new Movie"></asp:Button>
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" Width="696px">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
        <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
        <asp:BoundField DataField="prodyear" HeaderText="prodyear" SortExpression="prodyear" />
        <asp:BoundField DataField="company" HeaderText="company" SortExpression="company" />
        <asp:BoundField DataField="director" HeaderText="director" SortExpression="director" />
        <asp:BoundField DataField="editor" HeaderText="editor" SortExpression="editor" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SanjayDBConnectionString %>" DeleteCommand="DELETE FROM [allmovies] WHERE [id] = @id" InsertCommand="INSERT INTO [allmovies] ([title], [prodyear], [company], [director], [editor]) VALUES (@title, @prodyear, @company, @director, @editor)" SelectCommand="SELECT * FROM [allmovies]" UpdateCommand="UPDATE [allmovies] SET [title] = @title, [prodyear] = @prodyear, [company] = @company, [director] = @director, [editor] = @editor WHERE [id] = @id">
    <DeleteParameters>
        <asp:Parameter Name="id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="title" Type="String" />
        <asp:Parameter Name="prodyear" Type="Decimal" />
        <asp:Parameter Name="company" Type="String" />
        <asp:Parameter Name="director" Type="String" />
        <asp:Parameter Name="editor" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="title" Type="String" />
        <asp:Parameter Name="prodyear" Type="Decimal" />
        <asp:Parameter Name="company" Type="String" />
        <asp:Parameter Name="director" Type="String" />
        <asp:Parameter Name="editor" Type="String" />
        <asp:Parameter Name="id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>

