<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Binding1.aspx.cs" Inherits="WebProjects.Binding1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="Membership" HeaderText="Membership" SortExpression="Membership" />
                <asp:BoundField DataField="ShoppingPreference" HeaderText="ShoppingPreference" SortExpression="ShoppingPreference" />
                <asp:BoundField DataField="COD" HeaderText="COD" SortExpression="COD" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
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
