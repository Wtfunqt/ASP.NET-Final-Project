<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPages/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="UserControl.aspx.cs" Inherits="UserControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="id" DataSourceID="SqlDataSource1" Width="750px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" />
            <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id" >
            <ItemStyle Width="15px" />
            </asp:BoundField>
            <asp:BoundField DataField="username" HeaderText="User name" SortExpression="username" >
            <ItemStyle Width="200px" />
            </asp:BoundField>
            <asp:BoundField DataField="password" HeaderText="Password" SortExpression="password" >
            <ItemStyle Width="200px" />
            </asp:BoundField>
            <asp:BoundField DataField="usertype" HeaderText="Type of user" SortExpression="usertype" >
            <ItemStyle Width="100px" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AdemirDBConnectionString %>" DeleteCommand="DELETE FROM [accounts] WHERE [id] = @id" InsertCommand="INSERT INTO [accounts] ([username], [password], [usertype]) VALUES (@username, @password, @usertype)" SelectCommand="SELECT * FROM [accounts] WHERE ([usertype] = 'user' or [usertype] = 'owner')" UpdateCommand="UPDATE [accounts] SET [username] = @username, [password] = @password, [usertype] = @usertype WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="usertype" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="usertype" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

