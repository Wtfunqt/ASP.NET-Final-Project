<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPage.master" AutoEventWireup="true" CodeFile="PlaylistLogin.aspx.cs" Inherits="Pages_PlaylistLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>You can't be there</h1>
    <h1>Login first</h1>
    <asp:LinkButton ID="lBtnLog" runat="server" Text="Login" PostBackUrl="~/Account/Login.aspx"></asp:LinkButton>
    <p1>or register</p1>
    <asp:LinkButton ID="lBtnReg" runat="server" Text="Register" PostBackUrl="~/Account/Register.aspx"></asp:LinkButton>
</asp:Content>

