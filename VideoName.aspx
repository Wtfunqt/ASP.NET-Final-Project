<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="VideoName.aspx.cs" Inherits="VideoName" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="lblName" runat="server" Text="Movie Name: "></asp:Label>
    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName"
                                ErrorMessage="Please enter a movie title." />
                        
    <br />
    <asp:Button ID="Button1" runat="server" Text="Search" />
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSourceForName" DataKeyNames="id">
        <AlternatingItemTemplate>
            <tr style="background-color:#FFFFFF; color: #284775;">
                <td>
                    <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                </td>
                <td>
                    <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
                </td>
                <td>
                    <asp:Label ID="prodyearLabel" runat="server" Text='<%# Eval("prodyear") %>' />
                </td>
                <td>
                    <asp:Label ID="companyLabel" runat="server" Text='<%# Eval("company") %>' />
                </td>
                <td>
                    <asp:Label ID="directorLabel" runat="server" Text='<%# Eval("director") %>' />
                </td>
                <td>
                    <asp:Label ID="editorLabel" runat="server" Text='<%# Eval("editor") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="background-color:#999999;">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </td>
                <td>
                    <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                </td>
                <td>
                    <asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' />
                </td>
                <td>
                    <asp:TextBox ID="prodyearTextBox" runat="server" Text='<%# Bind("prodyear") %>' />
                </td>
                <td>
                    <asp:TextBox ID="companyTextBox" runat="server" Text='<%# Bind("company") %>' />
                </td>
                <td>
                    <asp:TextBox ID="directorTextBox" runat="server" Text='<%# Bind("director") %>' />
                </td>
                <td>
                    <asp:TextBox ID="editorTextBox" runat="server" Text='<%# Bind("editor") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                </td>
                <td>
                    <asp:TextBox ID="idTextBox" runat="server" Text='<%# Bind("id") %>' />
                </td>
                <td>
                    <asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' />
                </td>
                <td>
                    <asp:TextBox ID="prodyearTextBox" runat="server" Text='<%# Bind("prodyear") %>' />
                </td>
                <td>
                    <asp:TextBox ID="companyTextBox" runat="server" Text='<%# Bind("company") %>' />
                </td>
                <td>
                    <asp:TextBox ID="directorTextBox" runat="server" Text='<%# Bind("director") %>' />
                </td>
                <td>
                    <asp:TextBox ID="editorTextBox" runat="server" Text='<%# Bind("editor") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="background-color:#E0FFFF; color: #333333;">
                <td>
                    <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                </td>
                <td>
                    <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
                </td>
                <td>
                    <asp:Label ID="prodyearLabel" runat="server" Text='<%# Eval("prodyear") %>' />
                </td>
                <td>
                    <asp:Label ID="companyLabel" runat="server" Text='<%# Eval("company") %>' />
                </td>
                <td>
                    <asp:Label ID="directorLabel" runat="server" Text='<%# Eval("director") %>' />
                </td>
                <td>
                    <asp:Label ID="editorLabel" runat="server" Text='<%# Eval("editor") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr runat="server" style="background-color:#E0FFFF; color: #333333;">
                                <th runat="server">id</th>
                                <th runat="server">title</th>
                                <th runat="server">prodyear</th>
                                <th runat="server">company</th>
                                <th runat="server">director</th>
                                <th runat="server">editor</th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="text-align: center;background-color: #5D7B9D; font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF;">
                        <asp:DataPager ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="background-color:#E2DED6; font-weight: bold;color: #333333;">
                <td>
                    <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                </td>
                <td>
                    <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
                </td>
                <td>
                    <asp:Label ID="prodyearLabel" runat="server" Text='<%# Eval("prodyear") %>' />
                </td>
                <td>
                    <asp:Label ID="companyLabel" runat="server" Text='<%# Eval("company") %>' />
                </td>
                <td>
                    <asp:Label ID="directorLabel" runat="server" Text='<%# Eval("director") %>' />
                </td>
                <td>
                    <asp:Label ID="editorLabel" runat="server" Text='<%# Eval("editor") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    
    
    
    <asp:SqlDataSource ID="SqlDataSourceForName" runat="server" ConnectionString="<%$ ConnectionStrings:SanjayDBConnectionString %>" SelectCommand="SELECT * FROM [allmovies] WHERE ([title] LIKE '%' + @title + '%')">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtName" DefaultValue="default" Name="title" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

