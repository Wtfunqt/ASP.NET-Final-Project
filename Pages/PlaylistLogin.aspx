<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MasterPage.master" AutoEventWireup="true" CodeFile="PlaylistLogin.aspx.cs" Inherits="Pages_PlaylistLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 id="p">Playlist page only availible </h1>
    <h1 id="h1">Login first</h1>
    <asp:Button ID="lBtnLog" runat="server" Text="Login" PostBackUrl="~/Account/Login.aspx"></asp:Button>
    <asp:Button ID="lBtnReg" runat="server" Text="Register" PostBackUrl="~/Account/Register.aspx"></asp:Button>
    </asp:Content>

