<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            background-color: #009999;
        }
        .auto-style2 {
            height: 23px;
        }
    </style>
</head>
<body>
<form id="form1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">Enter a number</td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Enter another number</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="BtnAdd" runat="server" OnClick="BtnAdd_Click" Text="Add" />
                <asp:Button ID="BtnSub" runat="server" OnClick="BtnSub_Click" Text="Sub" />
                <asp:Button ID="BtnMul" runat="server" OnClick="BtnMul_Click" Text="Mult" />
                <asp:Button ID="BtnDiv" runat="server" OnClick="BtnDiv_Click" Text="Divide" />
                &nbsp;<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
<video width="800" height="500" controls="controls">
    
<source src="videos/---How to Change Your Home Screen Icon Shapes in iOS 7 - YouTube.mp4" />
    


</video>
    <audio controls="controls">
        <source src="audio/02 - HAK - Humnava [Songspk.LINK].mp3" />


    </audio>
</form>    
</body>
</html>
