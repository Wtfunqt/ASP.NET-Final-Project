<%@ Page Title="" Language="C#" MasterPageFile="~/OwnersPages/MasterPageOwner.master" AutoEventWireup="true" CodeFile="Movies_Add.aspx.cs" Inherits="Movies_Add" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Add Movie into the List of Movies</h1>
    
    <table class="coffeeTable">
        <tr>
            <td style="width: 168px">

                <strong>Title of the Movie:</strong></td>
            <td style="width: 442px">

                <asp:TextBox ID="txtTitle" runat="server" Width="300px"></asp:TextBox>

                <asp:RequiredFieldValidator ID="ReqValidTitle" runat="server" ControlToValidate="txtTitle" ErrorMessage="Please enter Title of the movie"></asp:RequiredFieldValidator>

            </td>
        </tr>
        <tr>
            <td style="width: 168px; font-weight: 700;">

                Production Year:</td>
            <td style="width: 442px">

                <asp:TextBox ID="txtYear" runat="server" Width="300px"></asp:TextBox>

                <asp:RequiredFieldValidator ID="ReqValidYear" runat="server" ControlToValidate="txtYear" ErrorMessage="Please enter Production Year of the movie"></asp:RequiredFieldValidator>

            </td>
        </tr>
        <tr>
            <td style="width: 168px; height: 39px;">

                <strong>Production Company:</strong></td>
            <td style="width: 442px; height: 39px;">

                <asp:TextBox ID="txtCompany" runat="server" Width="300px"></asp:TextBox>

                <asp:RequiredFieldValidator ID="ReqValidCompany" runat="server" ControlToValidate="txtCompany" ErrorMessage="Please enter Production Company of the movie"></asp:RequiredFieldValidator>

            </td>
        </tr>
        <tr>
            <td style="width: 168px; font-weight: 700;">

                Director:</td>
            <td style="width: 442px">

                <asp:TextBox ID="txtDirector" runat="server" Width="300px"></asp:TextBox>

                <asp:RequiredFieldValidator ID="ReqValidDirector" runat="server" ControlToValidate="txtDirector" ErrorMessage="Please enter Name of the Director of the movie"></asp:RequiredFieldValidator>

            </td>
        </tr>
        <tr>
            <td style="width: 168px">

                <strong>Editor:</strong></td>
            <td style="width: 442px">

                <asp:TextBox ID="txtEditor" runat="server" Width="300px"></asp:TextBox>

                <asp:RequiredFieldValidator ID="ReqValidEditor" runat="server" ControlToValidate="txtEditor" ErrorMessage="Please enter name of the Editor of the movie"></asp:RequiredFieldValidator>

            </td>
        </tr>
    </table>
    <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
    <br />
    <asp:Button ID="btnAdd" runat="server" Text="Add Movie" OnClick="btnAdd_Click"/>
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

