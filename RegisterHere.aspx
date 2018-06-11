<%@ Page Title="" Language="C#" MasterPageFile="~/GeneralMaster.master" AutoEventWireup="true" CodeFile="RegisterHere.aspx.cs" Inherits="RegisterHere" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border-color: #CCFF33;
            background-color: #FF9966;
        }
        .auto-style2 {
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHHeading" Runat="Server">
    Register Here
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CPHContent" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>Your Name:</td>
            <td>
                <asp:TextBox ID="TxtYourName" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Father&#39;s Name:</td>
            <td>
                <asp:TextBox ID="TxtFatherName" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Gender:</td>
            <td>
                <asp:RadioButton ID="RdBtnMale" runat="server" Checked="True" GroupName="gender" Text="male" />
&nbsp;&nbsp;
                <asp:RadioButton ID="RdBtnFemale" runat="server" GroupName="gender" Text="female" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Date of Birth:</td>
            <td>
                <asp:TextBox ID="TxtDOB" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>College Name:</td>
            <td>
                <asp:TextBox ID="TxtClgName" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Course:</td>
            <td>
                <asp:TextBox ID="TxtCourse" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Year:</td>
            <td>
                <asp:TextBox ID="TxtYear" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Current Address:</td>
            <td>
                <asp:TextBox ID="TxtAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Contact No.:</td>
            <td>
                <asp:TextBox ID="TxtContactNo" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Email Id:</td>
            <td>
                <asp:TextBox ID="TxtEmailAddress" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Profile Pic:</td>
            <td>
                <asp:FileUpload ID="FUPicture" runat="server" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Password:</td>
            <td>
                <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Confirm Password:</td>
            <td class="auto-style2">
                <asp:TextBox ID="TxtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td>Captcha Code:</td>
            <td>
                <asp:Image ID="ImgCaptcha" runat="server" Height="23px" Width="129px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImgBtnRefresh" runat="server" ImageUrl="~/images/refreshBid.png" Width="28px" OnClick="ImgBtnRefresh_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Type above text here:</td>
            <td>
                <asp:TextBox ID="TxtCaptchaCode" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:ImageButton ID="ImgBtnRegister" runat="server" ImageUrl="~/images/register_button.png" Width="155px" OnClick="ImgBtnRegister_Click" />
            </td>
            <td>
                <asp:Label ID="LblMessage" runat="server" Text="Label"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

