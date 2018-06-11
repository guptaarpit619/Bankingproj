<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralMaster.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHHeading" Runat="Server">
    Login
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHContent" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td>Enter User/Email Id:</td>
        <td>
            <asp:TextBox ID="TxtUserId" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Enter Password:</td>
        <td>
            <asp:TextBox ID="TxtPasswd" runat="server" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="BtnLogin" runat="server" OnClick="BtnLogin_Click" Text="Login" />
        </td>
    </tr>
</table>
</asp:Content>

