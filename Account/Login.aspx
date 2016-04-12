<%@ Page Title="" Language="C#" MasterPageFile="~/Account/MasterPageLogIn.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Account_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <table style="width: 225px; height: 178px">
         <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
         <tr>
             <td><strong>Login:</strong></td>
             <td style="width: 111px">
                 <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                 
             </td>
         </tr>
         <tr>
             <td></td>
             <td><asp:RequiredFieldValidator ID="ReqValidName" runat="server" ErrorMessage="Please enter your User Name" ControlToValidate="txtName"></asp:RequiredFieldValidator></td>
         </tr>
         <tr>
             <td><strong>Password:</strong></td>
             <td style="width: 111px">
                 <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                 &nbsp;</td>
         </tr>
         <tr><td></td>
             <td><asp:RequiredFieldValidator ID="ReqValidPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Please enter your password"></asp:RequiredFieldValidator></td>
         </tr>
         <tr>
             <td>
                 <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
                 </td>
             <td>    
             <asp:Button ID="btnRegister" runat="server" PostBackUrl="~/Account/Register.aspx" Text="Register" CausesValidation="False" />
             </td>
         </tr>
     </table>
</asp:Content>

