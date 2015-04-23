<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="VideoYear.aspx.cs" Inherits="VideoYear" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="prodyear" DataValueField="prodyear" AutoPostBack="True">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AdemirDBConnectionString %>" SelectCommand="select title from allmovies where (prodyear = @prodyear)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" DefaultValue="1990" Name="prodyear" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AdemirDBConnectionString %>" SelectCommand="SELECT DISTINCT [prodyear] FROM [allmovies]"></asp:SqlDataSource>
    </asp:Content>

