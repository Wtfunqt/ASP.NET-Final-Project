<%@ Page Title="" Language="C#" MasterPageFile="~/OwnersPages/MasterPageOwner.master" AutoEventWireup="true" CodeFile="MoviesAdvanced.aspx.cs" Inherits="Styles_MoviesDescription" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>MovieList</h1>
    <asp:Button ID="btnAddMovie" runat="server" PostBackUrl="~/OwnersPages/Movies_Add.aspx" Text="Add new Movie"></asp:Button>
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" Width="750px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
    <Columns>
        <asp:BoundField DataField="id" HeaderText="ID" ReadOnly="True" SortExpression="id" >
        <ItemStyle Width="15px" />
        </asp:BoundField>
        <asp:BoundField DataField="title" HeaderText="Title" SortExpression="title" >
        <ItemStyle Width="150px" />
        </asp:BoundField>
        <asp:BoundField DataField="prodyear" HeaderText="Production Year" SortExpression="prodyear" >
        <ItemStyle Width="15px" />
        </asp:BoundField>
        <asp:BoundField DataField="company" HeaderText="Production Company" SortExpression="company" >
        <ItemStyle Width="150px" />
        </asp:BoundField>
        <asp:BoundField DataField="director" HeaderText="Director" SortExpression="director" >
        <ItemStyle Width="100px" />
        </asp:BoundField>
        <asp:BoundField DataField="editor" HeaderText="Editor" SortExpression="editor" >
        <ItemStyle Width="100px" />
        </asp:BoundField>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" />
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AdemirDBConnectionString %>" DeleteCommand="DELETE FROM [allmovies] WHERE [id] = @id" InsertCommand="INSERT INTO [allmovies] ([title], [prodyear], [company], [director], [editor]) VALUES (@title, @prodyear, @company, @director, @editor)" SelectCommand="SELECT * FROM [allmovies]" UpdateCommand="UPDATE [allmovies] SET [title] = @title, [prodyear] = @prodyear, [company] = @company, [director] = @director, [editor] = @editor WHERE [id] = @id">
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

