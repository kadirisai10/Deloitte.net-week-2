<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ValidatorExample.aspx.cs" Inherits="ControlsExample.ValidatorExample" %>

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
<body>
    <form id="form1" runat="server">
        <table class="auto-style1" style="En">
            <tr>
                <td>Enter Name</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Name cannot be blank"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Enter Age</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="Age cannot be null"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Age should be between 18 and 58" MaximumValue="58" MinimumValue="18" Type="Integer"></asp:RangeValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter only numbers" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>Select Department</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>select</asp:ListItem>
                        <asp:ListItem>It</asp:ListItem>
                        <asp:ListItem>Physics</asp:ListItem>
                        <asp:ListItem>Maths</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="DropDownList1" ErrorMessage="dept cannot be blank" InitialValue="select"></asp:RequiredFieldValidator>
                    
                </td>
            </tr>
            <tr>
                <td>Enter Email</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3" ErrorMessage="Email cannot be blank"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="TextBox3" ErrorMessage="enter the correct mail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>Enter Password</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox4" ErrorMessage="password cannot be blank"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Retype password to confirm</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox5" ErrorMessage="password cannot be blank"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox5" ErrorMessage="password do not match"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Button" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Button" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    <div>
    
    </div>
    </form>
</body>
</html>
