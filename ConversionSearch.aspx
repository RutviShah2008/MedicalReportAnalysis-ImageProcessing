<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ConversionSearch.aspx.cs" Inherits="ConversionMst" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            width: 203px;
        }
        .auto-style4 {
            height: 23px;
            width: 203px;
        }
        .auto-style5 {
            width: 203px;
            height: 26px;
        }
        .auto-style6 {
            height: 26px;
        }
    </style>
        <script src="JScript.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Underline="True" ForeColor="Blue" Text="FILE CONVERSION INFORMATION "></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <asp:Label ID="Label5" runat="server" ForeColor="White" Text="Label"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label2" runat="server" Text="Conversion Id" ForeColor="White"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="txtConversionId" runat="server" AutoPostBack="True" OnTextChanged="txtConversionId_TextChanged"></asp:TextBox>
            </td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label3" runat="server" Text="File Upload Id" ForeColor="White"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtFileUploadId" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label4" runat="server" Text="Content" ForeColor="White"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtContent" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

