<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InsertUserInfo.aspx.cs" Inherits="WebProjects.InsertUserInfo" %>

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
                <td style="font-size: 25px">Enter Name</td>
                <td>
                    <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="font-size: 25px">Status</td>
                <td>
                    <asp:TextBox ID="txtstatus" runat="server" Enabled="False">inactive</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="font-size: 25px">
                    <asp:Button ID="btninsert" runat="server" OnClick="btninsert_Click" Text="Insert" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
