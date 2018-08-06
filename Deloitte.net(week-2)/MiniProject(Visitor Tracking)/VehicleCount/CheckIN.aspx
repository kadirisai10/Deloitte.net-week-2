<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CheckIN.aspx.cs" Inherits="VehicleCount.CheckIN" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            width: 272px;
        }
        .auto-style6 {
            width: 272px;
            height: 27px;
        }
        .auto-style7 {
            height: 27px;
        }
        .auto-style8 {
            width: 795px;
        }
        .auto-style9 {
            height: 27px;
            width: 795px;
        }
    .auto-style10 {
        width: 98%;
        height: 516px;
        position: absolute;
        top: 249px;
        left: -28px;
        z-index: 1;
        margin-left: 40px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style10">
        <tr>
            <td class="auto-style4" colspan="3" style="border-style: solid; border-width: thin; background-color: #FF3399; color: #FFFFFF; font-size: large;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; VISITOR INFORMATION&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5" style="border-style: solid; border-width: thin">First Name:</td>
            <td class="auto-style8" style="border-style: solid; border-width: thin">
                <asp:TextBox ID="txtfirst" runat="server"></asp:TextBox>
            </td>
            <td style="border-style: solid; border-width: thin">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtfirst" ErrorMessage="Enter FirstName "></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="border-style: solid; border-width: thin">Last name:</td>
            <td class="auto-style8" style="border-style: solid; border-width: thin">
                <asp:TextBox ID="txtlast" runat="server"></asp:TextBox>
            </td>
            <td style="border-style: solid; border-width: thin">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtlast" ErrorMessage="Enter lastname"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="border-style: solid; border-width: thin">Company:</td>
            <td class="auto-style8" style="border-style: solid; border-width: thin">
                <asp:TextBox ID="txtcompany" runat="server"></asp:TextBox>
            </td>
            <td style="border-style: solid; border-width: thin">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtcompany" ErrorMessage="Enter your company name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6" style="border-style: solid; border-width: thin">Visiting:</td>
            <td class="auto-style9" style="border-style: solid; border-width: thin">
                <asp:TextBox ID="txtvisiting" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style7" style="border-style: solid; border-width: thin">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtvisiting" ErrorMessage="Enter the visiting company"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="border-style: solid; border-width: thin">Id Type:</td>
            <td class="auto-style8" style="border-style: solid; border-width: thin">
                <table class="auto-style3">
                    <tr>
                        <td>
                            <asp:DropDownList ID="ddlidtype" runat="server">
                                <asp:ListItem>select</asp:ListItem>
                                <asp:ListItem>Aadhar</asp:ListItem>
                                <asp:ListItem>PAN</asp:ListItem>
                                <asp:ListItem>License</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>ID Num:</td>
                        <td>
                            <asp:TextBox ID="txtidnum" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
            <td style="border-style: solid; border-width: thin">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddlidtype" ErrorMessage="Enter the IDType"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtidnum" ErrorMessage="Enter the Id number"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="border-style: solid; border-width: thin">Vehicle Number:</td>
            <td class="auto-style8" style="border-style: solid; border-width: thin">
                <asp:TextBox ID="txtvehiclenum" runat="server"></asp:TextBox>
            </td>
            <td style="border-style: solid; border-width: thin">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtvehiclenum" ErrorMessage="Enter in the format AP02-EQ1234" ValidationExpression="^[A-Z]{2}[0-9]{2}[-][A-Z]{2}[0-9]{4}$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="border-style: solid; border-width: thin">Contact Number:</td>
            <td class="auto-style8" style="border-style: solid; border-width: thin">
                <asp:TextBox ID="txtphone" runat="server"></asp:TextBox>
            </td>
            <td style="border-style: solid; border-width: thin">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtphone" ErrorMessage="Enter the contact number"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtphone" ErrorMessage="Enter in the required format" ValidationExpression="^[0-9]{10}$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="border-style: solid; border-width: thin">Purpose of Visit:</td>
            <td class="auto-style8" style="border-style: solid; border-width: thin">
                <asp:TextBox ID="txtpurpose" runat="server"></asp:TextBox>
            </td>
            <td style="border-style: solid; border-width: thin">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtpurpose" ErrorMessage="Enter the purpose of visit"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="border-style: solid; border-width: thin">&nbsp;</td>
            <td class="auto-style8" style="border-style: solid; border-width: thin">
                <asp:Label ID="lbresult" runat="server" Enabled="False" Text="Label"></asp:Label>
            </td>
            <td style="border-style: solid; border-width: thin">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5" style="border-style: solid; border-width: thin">
                <asp:Button ID="btncancel" runat="server" Text="Cancel" CausesValidation="False" OnClick="btncancel_Click" />
            </td>
            <td class="auto-style8" style="border-style: solid; border-width: thin">
                
                <asp:Button ID="btnsave" runat="server" Text="Save" OnClick="btnsave_Click" />
                
            </td>
            <td style="border-style: solid; border-width: thin">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
