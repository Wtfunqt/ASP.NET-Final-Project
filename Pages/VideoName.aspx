<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPage.master" AutoEventWireup="true" CodeFile="VideoName.aspx.cs" Inherits="VideoName" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <asp:Label ID="lblName" runat="server" Text="Movie Name: "></asp:Label>
    <asp:TextBox ID="txtName" runat="server" OnTextChanged="txtName_TextChanged"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName"
                                ErrorMessage="Please enter a movie title." />
                        
    <br />
    <asp:Button ID="Button1" runat="server" Text="Search" />
    
    
    
    <asp:Button ID="btnAddToList" runat="server" Text="Add to Playlist" OnClick="btnAddToList_Click" />
    
    
    
    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False" Font-Size="Larger"></asp:Label>
    <asp:Label ID="lblSelectSomething" runat="server" Text="Label" Visible="False" Font-Size="Large"></asp:Label>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Horizontal" Height="50px" Width="750px" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <Fields>
            <asp:BoundField DataField="summary" HeaderText="Summary" SortExpression="summary" />
            <asp:BoundField DataField="author" HeaderText="Author(s)" SortExpression="author" />
        </Fields>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
    </asp:DetailsView>
    
    
    
    <asp:SqlDataSource ID="SqlDataSourceForName" runat="server" ConnectionString="<%$ ConnectionStrings:AdemirDBConnectionString %>" SelectCommand="SELECT [id], [title], [prodyear] FROM [allmovies] WHERE ([title] LIKE '%' + @title + '%') or ([editor] LIKE '%' + @title + '%') or ([company] LIKE '%' + @title + '%') or ([director] LIKE '%' + @title + '%')">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtName" DefaultValue="default" Name="title" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSourceForName" DataKeyNames="id" Width="750px">
        <Columns>
            <asp:CommandField ShowSelectButton="True" ButtonType="Button" >
            <ItemStyle Width="30px" />
            </asp:CommandField>
            <asp:BoundField DataField="id" HeaderText="ID" SortExpression="id" ReadOnly="True" >
            <ItemStyle Width="15px" />
            </asp:BoundField>
            <asp:BoundField DataField="title" HeaderText="Title of the movie" SortExpression="title" />
            <asp:BoundField DataField="prodyear" HeaderText="Production year" SortExpression="prodyear" />
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

    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AdemirDBConnectionString %>" SelectCommand="SELECT [summary], [author] FROM [summaries] WHERE ([id] = @id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="id" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

