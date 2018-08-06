<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterShopping.aspx.cs" Inherits="ControlsExample.RegisterShopping" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body style="background-color: #FFFFFF">
    <form id="form1" runat="server">
    <div>
    
    </div>
        <table align="left" class="auto-style1" style="background-color: #CCFFFF">
            <tr>
                <td>Enter Name</td>
                <td>
                    <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Select Gender</td>
                <td>
                    <asp:DropDownList ID="ddlgender" runat="server" >
                        <asp:ListItem>male</asp:ListItem>
                        <asp:ListItem>female</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Select membership</td>
                <td>
                    <asp:RadioButton ID="rbfree" runat="server" GroupName="member" Text="free" />
                    <asp:RadioButton ID="rbpaid" runat="server" GroupName="member" Text="paid" />
                </td>
            </tr>
            <tr>
                <td>Select Shopping Preference</td>
                <td>
                    <asp:CheckBoxList ID="cblshopping" runat="server">
                        <asp:ListItem>mobiles</asp:ListItem>
                        <asp:ListItem>cosmetics</asp:ListItem>
                        <asp:ListItem>books</asp:ListItem>
                        <asp:ListItem>shoes</asp:ListItem>
                        <asp:ListItem>utensils</asp:ListItem>
                        <asp:ListItem>apparels</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td>Prefer COD</td>
                <td>
                    <asp:CheckBox ID="cbcod" runat="server" Text="cod" />
                </td>
            </tr>
            <tr>
                <td>Enter Password</td>
                <td>
                    <asp:TextBox ID="txtpass" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnregister" runat="server" Text="register" OnClick="btnregister_Click" />
                </td>
                <td>
                    <asp:Button ID="btn" runat="server" Text="Button" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
