<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Account_Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table>
    <tr>
        <td style="width: 142px">
            <strong>Name:</strong>
        </td>
        <td style="width: 349px">
            <asp:TextBox ID="txtRegName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="ReqValidRegRegName" runat="server" ControlToValidate="txtRegName" ErrorMessage="Please enter your User Name"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 142px">
            <strong>Password:</strong>
        </td>
        <td style="width: 349px">
            <asp:TextBox ID="txtRegPassword" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="ReqValidRegPass" runat="server" ControlToValidate="txtRegPassword" ErrorMessage="Please enter your Password"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 142px">
            <strong>Confirm Password:</strong>
        </td>
        <td style="width: 349px">
            <asp:TextBox ID="txtRegConfPassword" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="ReqValidConfPass" runat="server" ControlToValidate="txtRegConfPassword" ErrorMessage="Please confirm your password by entering it again"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="ComValidRegPass" runat="server" ControlToCompare="txtRegConfPassword" ControlToValidate="txtRegPassword" ErrorMessage="Passwords must match"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 142px">
            <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click"/>
            <asp:Label ID="lblRegResult" runat="server" Text=""></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

