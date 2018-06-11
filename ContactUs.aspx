<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralMaster.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHHeading" Runat="Server">
    Fill The Form To Contact Us!
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHContent" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td style="font-weight: 700">Name:</td>
            <td>
                <asp:TextBox ID="TxtName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td><strong>Address:</strong></td>
            <td>
                <asp:TextBox ID="TxtAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="font-weight: 700">Gender:</td>
            <td>
                <asp:RadioButton ID="RbtnMale" runat="server" Text="Male" Checked="True" GroupName="gender" />
&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RbtnFemale" runat="server" Text="Female" GroupName="gender" />
            </td>
        </tr>
        <tr>
            <td style="font-weight: 700">Contact No.:</td>
            <td>
                <asp:TextBox ID="TxtContactNo" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="font-weight: 700">Email:</td>
            <td>
                <asp:TextBox ID="TxtEmailAddress" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="font-weight: 700">Any Message:</td>
            <td>
                <asp:TextBox ID="TxtMessage" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="BtnSave" runat="server" OnClick="BtnSave_Click" style="margin-left: 80px" Text="Save" Width="50px" />
            </td>
        </tr>
    </table>
</asp:Content>

