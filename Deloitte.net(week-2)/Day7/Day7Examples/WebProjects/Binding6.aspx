<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Binding6.aspx.cs" Inherits="WebProjects.Binding6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <HeaderTemplate>
                <table border="1">
                    <tr>
                        <td style="background-color:maroon;font-size:x-large">Resgister Shopping Data</td>
                    </tr>
                </table>
            </HeaderTemplate>
            <ItemTemplate>
                <table border="1" style="background-color:cornflowerblue;font-size:x-large">
                    <tr>
                        <th>Id</th>
                        <th>Name</th>
                        <th>Shopping Preference</th>
                        <th>Gender</th>
                        <th>Membership</th>
                        <th>COD</th>

                    </tr>

                    <tr>
                        <td><%# Eval("Id") %></td>
                        <td><%#Eval("Name") %></td>
                        <td><%# Eval("ShoppingPreference") %></td>
                        <td><%#Eval("Gender") %></td>
                        <td><%#Eval("Membership")%></td>
                        <td><%# Eval("COD") %></td>
                    </tr>

                </table>
            </ItemTemplate>

            <FooterTemplate>
                <h1>End of Table</h1>
            </FooterTemplate>
        </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:TrainingDBConnectionString %>" DeleteCommand="DELETE FROM [ResgisterShopping] WHERE [Id] = @original_Id AND [Name] = @original_Name AND [Gender] = @original_Gender AND [Membership] = @original_Membership AND [ShoppingPreference] = @original_ShoppingPreference AND [COD] = @original_COD AND [Password] = @original_Password" InsertCommand="INSERT INTO [ResgisterShopping] ([Name], [Gender], [Membership], [ShoppingPreference], [COD], [Password]) VALUES (@Name, @Gender, @Membership, @ShoppingPreference, @COD, @Password)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [ResgisterShopping]" UpdateCommand="UPDATE [ResgisterShopping] SET [Name] = @Name, [Gender] = @Gender, [Membership] = @Membership, [ShoppingPreference] = @ShoppingPreference, [COD] = @COD, [Password] = @Password WHERE [Id] = @original_Id AND [Name] = @original_Name AND [Gender] = @original_Gender AND [Membership] = @original_Membership AND [ShoppingPreference] = @original_ShoppingPreference AND [COD] = @original_COD AND [Password] = @original_Password">
            <DeleteParameters>
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_Gender" Type="String" />
                <asp:Parameter Name="original_Membership" Type="String" />
                <asp:Parameter Name="original_ShoppingPreference" Type="String" />
                <asp:Parameter Name="original_COD" Type="String" />
                <asp:Parameter Name="original_Password" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="Membership" Type="String" />
                <asp:Parameter Name="ShoppingPreference" Type="String" />
                <asp:Parameter Name="COD" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="Membership" Type="String" />
                <asp:Parameter Name="ShoppingPreference" Type="String" />
                <asp:Parameter Name="COD" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_Gender" Type="String" />
                <asp:Parameter Name="original_Membership" Type="String" />
                <asp:Parameter Name="original_ShoppingPreference" Type="String" />
                <asp:Parameter Name="original_COD" Type="String" />
                <asp:Parameter Name="original_Password" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    <div>
    
    </div>
    </form>
</body>
</html>
