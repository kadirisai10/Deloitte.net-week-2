<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Page1.aspx.cs" Inherits="StateManagementAndCaching.Page1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 232px;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            margin-left: 19px;
        }
        .auto-style4 {
            margin-left: 0px;
        }
    </style>
</head>
<body style="height: 235px">
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1" style="background-color: #6699FF; font-size: medium">
            <tbody class="auto-style2">
                <tr>
                    <td>Enter Name</td>
                    <td>
                        <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Enter Age</td>
                    <td>
                        <asp:TextBox ID="txtage" runat="server" CssClass="auto-style4" Width="125px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Enter Email</td>
                    <td>
                        <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                        <asp:Button ID="btnquerystring" runat="server" CssClass="auto-style3" OnClick="btnquerystring_Click" Text="QueryString" />
                    </td>
                </tr>
            </tbody>
        </table>
    
    </div>
    </form>
</body>
</html>
