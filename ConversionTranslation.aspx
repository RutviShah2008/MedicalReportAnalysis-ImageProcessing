<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ConversionTranslation.aspx.cs" Inherits="ConversionTranslation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            height: 20px;
        }
        .auto-style4 {
            height: 22px;
        }
    </style>
        <script src="JScript.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label7" runat="server" Font-Underline="True" ForeColor="Blue" Text="REPORT DATA"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style3">
                <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                </td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label1" runat="server" Text="Column Name" ForeColor="White"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtColumnName" runat="server" ValidationGroup="Report"></asp:TextBox>
            </td>
            <td class="auto-style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtColumnName" ErrorMessage="Not Null" ForeColor="Red" ValidationGroup="Report"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Column Data" ForeColor="White"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtColumnData" runat="server" OnTextChanged="TextBox2_TextChanged" ValidationGroup="Report"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtColumnData" ErrorMessage="Not Null" ForeColor="Red" ValidationGroup="Report"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Positive Flag" ForeColor="White"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPositiveFlag" runat="server" ValidationGroup="Report"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPositiveFlag" ErrorMessage="Not Null" ForeColor="Red" ValidationGroup="Report"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label4" runat="server" Text="AlertId" ForeColor="White"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="txtAlertId" runat="server" ValidationGroup="Report"></asp:TextBox>
            </td>
            <td class="auto-style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAlertId" ErrorMessage="Not Null" ForeColor="Red" ValidationGroup="Report"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label5" runat="server" Text="ConversionId" ForeColor="White"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="txtConversionId" runat="server" ValidationGroup="Report"></asp:TextBox>
            </td>
            <td class="auto-style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtConversionId" ErrorMessage="Not Null" ForeColor="Red" ValidationGroup="Report"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label6" runat="server" Text="Reason" ForeColor="White"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="txtReason" runat="server" ValidationGroup="Report"></asp:TextBox>
            </td>
            <td class="auto-style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtReason" ErrorMessage="Not Null" ForeColor="Red" ValidationGroup="Report"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="errlbl" runat="server" Text="Label"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

