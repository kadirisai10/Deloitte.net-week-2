<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckOut.aspx.cs" Inherits="VehicleCount.CheckOut" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table class="auto-style5" align="left">
        <tr>
            <td style="background-color: #99FFCC">Visitors In</td>
            <td style="background-color: #99FFCC">
                <asp:TextBox ID="txtvisitorsin" runat="server"></asp:TextBox>
            </td>
            <td style="background-color: #99FFCC">
                <asp:Button ID="btnsearchid" runat="server" Text="Search by ID" OnClick="btnsearchid_Click" />
            </td>
            <td style="background-color: #99FFCC">
                <asp:Button ID="btnsearchname" runat="server" Text="Search by name" OnClick="btnsearchname_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="4" class="auto-style6">
                <asp:Label ID="lblresult" runat="server" Text="Label"></asp:Label>
                <asp:GridView ID="gdresult" runat="server" OnSelectedIndexChanged="gdresult_SelectedIndexChanged">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="b1" runat="server" OnClick="b1_Click" Text="Sign Out" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AssignmentDBConnectionString %>" SelectCommand="SELECT [Fname], [Lname], [IdType], [IdNum] FROM [Table]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
