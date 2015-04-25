<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPage.master" AutoEventWireup="true" CodeFile="Videos.aspx.cs" Inherits="Videos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AdemirDBConnectionString %>" SelectCommand="SELECT [title], [prodyear] FROM [allmovies]"></asp:SqlDataSource>

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns> 
            <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
            <asp:BoundField DataField="prodyear" HeaderText="prodyear" SortExpression="prodyear" />
            <asp:TemplateField ShowHeader="false">
                <ItemTemplate>
                    <asp:Button ID="btnWatch" runat="server" Text="Watch movie summary" OnClientClick="" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>

</asp:Content>

