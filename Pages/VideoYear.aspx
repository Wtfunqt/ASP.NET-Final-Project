<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPage.master" AutoEventWireup="true" CodeFile="VideoYear.aspx.cs" Inherits="VideoYear" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="prodyear" DataValueField="prodyear" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False" Font-Size="Larger"></asp:Label>

    <asp:Label ID="lblSelectSomething" runat="server" Text="Label" Visible="False" Font-Size="Larger"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AdemirDBConnectionString %>" SelectCommand="select id,title from allmovies where (prodyear = @prodyear)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" DefaultValue="1990" Name="prodyear" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
    <p style="float:left">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" DataKeyNames="id" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="750px" AllowPaging="True" >
        <Columns>
            <asp:CommandField ShowSelectButton="True" ButtonType="Button" >
            <ItemStyle Width="30px" />
            </asp:CommandField>
            <asp:BoundField DataField="id" HeaderText="ID" SortExpression="id" ReadOnly="True" >
            <ItemStyle Width="15px" />
            </asp:BoundField>
            <asp:BoundField DataField="title" HeaderText="Title of the movie" SortExpression="title" />
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
        <asp:Button ID="btnAddToPlaylist" runat="server" Text="Add To Playlist" OnClick="btnAddToPlaylist_Click"  />
    <br /> 
    <br />

        </p >
    <p style="float:right">
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AdemirDBConnectionString %>" SelectCommand="SELECT DISTINCT [prodyear] FROM [allmovies]"></asp:SqlDataSource>
    </asp:Content>

