<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="FileTypeMst.aspx.cs" Inherits="FileTypeMst" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            height: 22px;
        }
    </style>
        <script src="JScript.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="grid_5">
                <h2 class="indent-1">FILE TYPE DETAIL</h2>
            </div>
    <table class="auto-style1">
        <tr>
            <td style="margin-left: 120px" class="auto-style3">
                <asp:Label ID="Label1" runat="server" Text="FileTypeId" ForeColor="Black" Font-Size="Medium"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="txtFileTypeId" runat="server" Font-Size="Medium"></asp:TextBox>
            </td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td style="margin-left: 120px" class="auto-style3">
                &nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="FileTypeName" ForeColor="Black" Font-Size="Medium"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtFileTypeName" runat="server" AutoPostBack="True" Font-Size="Medium" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFileTypeName" ErrorMessage="Not Null" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:Label ID="Label3" runat="server" ForeColor="Red" Text="Already Exists"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style2">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" Font-Size="Medium" />
            </td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="errlbl" runat="server" ForeColor="Black" Text="Label" Font-Size="Medium"></asp:Label>
            </td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

