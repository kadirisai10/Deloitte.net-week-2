<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Project2.aspx.cs" Inherits="WebProjects.Project2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button ID="b1" runat="server" Text="Activate" OnClick="b1_Click" />                    
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TrainingDBConnectionString %>" SelectCommand="SELECT * FROM [UserInfo] WHERE ([status] = @status)">
            <SelectParameters>
                <asp:Parameter DefaultValue="Inactive" Name="status" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
