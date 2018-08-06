<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Binding5.aspx.cs" Inherits="WebProjects.Binding5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal">
            <ItemTemplate>
                Id:
                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                <br />
                Name:
                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                <br />
                Gender:
                <asp:Label ID="GenderLabel" runat="server" Text='<%# Eval("Gender") %>' />
                <br />
                Membership:
                <asp:Label ID="MembershipLabel" runat="server" Text='<%# Eval("Membership") %>' />
                <br />
                ShoppingPreference:
                <asp:Label ID="ShoppingPreferenceLabel" runat="server" Text='<%# Eval("ShoppingPreference") %>' />
                <br />
                COD:
                <asp:Label ID="CODLabel" runat="server" Text='<%# Eval("COD") %>' />
                <br />
                Password:
                <asp:Label ID="PasswordLabel" runat="server" Text='<%# Eval("Password") %>' />
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
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
    
    </div>
    </form>
</body>
</html>
