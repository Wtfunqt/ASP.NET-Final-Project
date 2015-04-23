<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Videos.aspx.cs" Inherits="Videos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:ListView ID="ListView1" runat="server" DataKeyNames="id" DataSourceID="SqlDataSource1">
        <AlternatingItemTemplate>
            <span style="background-color: #FFFFFF;color: #284775;"><b>ID:</b>
            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
            <br />
            <b></b>Title of the movie:</b>
            <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
            <br />
            <b>Production Year:</b>
            <asp:Label ID="prodyearLabel" runat="server" Text='<%# Eval("prodyear") %>' />
            <br />
            <b>Production Company:</b>
            <asp:Label ID="companyLabel" runat="server" Text='<%# Eval("company") %>' />
            <br />
            <b>Director:</b>
            <asp:Label ID="directorLabel" runat="server" Text='<%# Eval("director") %>' />
            <br />
            <b>Editor:</b>
            <asp:Label ID="editorLabel" runat="server" Text='<%# Eval("editor") %>' />
            <br />
<br /></span>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <span style="background-color: #999999;"><b>ID:</b>
            <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
            <br />
            <b>Title of the movie:</b>
            <asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' />
            <br />
            <b>Production Year:</b>
            <asp:TextBox ID="prodyearTextBox" runat="server" Text='<%# Bind("prodyear") %>' />
            <br />
            <b>Production Company:</b>
            <asp:TextBox ID="companyTextBox" runat="server" Text='<%# Bind("company") %>' />
            <br />
            <b>Director:</b>
            <asp:TextBox ID="directorTextBox" runat="server" Text='<%# Bind("director") %>' />
            <br />
            <b>Editor:</b>
            <asp:TextBox ID="editorTextBox" runat="server" Text='<%# Bind("editor") %>' />
            <br />
            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
            <br /><br /></span>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <span>No data was returned.</span>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <span style=""><b>ID:</b>
            <asp:TextBox ID="idTextBox" runat="server" Text='<%# Bind("id") %>' />
            <br /><b>Title of the movie:</b>
            <asp:TextBox ID="titleTextBox" runat="server" Text='<%# Bind("title") %>' />
            <br /><b>Production Year:</b>
            <asp:TextBox ID="prodyearTextBox" runat="server" Text='<%# Bind("prodyear") %>' />
            <br /><b>Production Company:</b>
            <asp:TextBox ID="companyTextBox" runat="server" Text='<%# Bind("company") %>' />
            <br /><b>Director:</b>
            <asp:TextBox ID="directorTextBox" runat="server" Text='<%# Bind("director") %>' />
            <br /><b>Editor:</b>
            <asp:TextBox ID="editorTextBox" runat="server" Text='<%# Bind("editor") %>' />
            <br />
            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
            <br /><br /></span>
        </InsertItemTemplate>
        <ItemTemplate>
            <span style="background-color: #E0FFFF;color: #333333;"><b>ID:</b>
            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
            <br />
            <b>Title of the movie:</b>
            <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
            <br />
            <b>Production Year:</b>
            <asp:Label ID="prodyearLabel" runat="server" Text='<%# Eval("prodyear") %>' />
            <br />
            <b>Production Company:</b>
            <asp:Label ID="companyLabel" runat="server" Text='<%# Eval("company") %>' />
            <br />
            <b>Director:</b>
            <asp:Label ID="directorLabel" runat="server" Text='<%# Eval("director") %>' />
            <br />
            <b>Editor:</b>
            <asp:Label ID="editorLabel" runat="server" Text='<%# Eval("editor") %>' />
            <br />
<br /></span>
        </ItemTemplate>
        <LayoutTemplate>
            <div id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF;">
                <asp:DataPager ID="DataPager1" runat="server">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                        <asp:NumericPagerField />
                        <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                    </Fields>
                </asp:DataPager>
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <span style="background-color: #E2DED6;font-weight: bold;color: #333333;"><b>ID:</b>
            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
            <br />
            <b>Title of the movie:</b>
            <asp:Label ID="titleLabel" runat="server" Text='<i><%# Eval("title") %></i>' />
            <br />
            <b>Production Year:</b>
            <asp:Label ID="prodyearLabel" runat="server" Text='<%# Eval("prodyear") %>' />
            <br />
            <b>Production Company:</b>
            <asp:Label ID="companyLabel" runat="server" Text='<%# Eval("company") %>' />
            <br />
            <b>Director:</b>
            <asp:Label ID="directorLabel" runat="server" Text='<%# Eval("director") %>' />
            <br />
            <b>Editor:</b>
            <asp:Label ID="editorLabel" runat="server" Text='<%# Eval("editor") %>' />
            <br />
<br /></span>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SanjayDBConnectionString %>" SelectCommand="SELECT * FROM [allmovies]"></asp:SqlDataSource>

</asp:Content>

