<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="VehicleCount.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style3 {
        width: 100%;
    }
    .auto-style4 {
        width: 98%;
        height: 63px;
        position: absolute;
        top: 249px;
        left: -29px;
        z-index: 1;
        margin-left: 40px;
    }
    .auto-style5 {
        width: 492px;
    }
        .auto-style6 {
            width: 99%;
            height: 354px;
            position: relative;
            top: 7px;
            left: -42px;
            z-index: 1;
            margin-left: 40px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style6">
    <tr>
        <td style="color: #000000; background-color: #CCFFCC">Check In</td>
        <td class="auto-style5" style="color: #000000; background-color: #CCFFCC">
            <asp:Button ID="btnselectin" runat="server" Text="select" OnClick="btnselectin_Click" />
        </td>
    </tr>
    <tr>
        <td>Check Out</td>
        <td class="auto-style5">
            <asp:Button ID="btnselectout" runat="server" Text="select" OnClick="btnselectout_Click" />
        </td>
    </tr>
</table>
</asp:Content>
