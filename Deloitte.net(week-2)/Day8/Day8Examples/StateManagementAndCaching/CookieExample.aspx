<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CookieExample.aspx.cs" Inherits="StateManagementAndCaching.CookieExample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            background-color: #808080;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td>Enter UserName</td>
                <td>
                    <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Enter Password</td>
                <td>
                    <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnadd" runat="server" OnClick="btnadd_Click" Text="add Cookie" />
                </td>
                <td>
                    <asp:Button ID="btnread" runat="server" OnClick="btnread_Click" Text="Read Cookie" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
