<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="CitySearch.aspx.cs" Inherits="City" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            height: 23px;
        }
        .auto-style4 {
            height: 19px;
        }
    </style>
        <script src="JScript.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="grid_5">
                <h2 class="indent-1">CITY SEARCH</h2>
            </div>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label1" runat="server" Text="City Id" Font-Size="Large"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtCityId" runat="server" Font-Size="Large"></asp:TextBox>
            </td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="btnSubmit" runat="server" Text="Search" OnClick="btnSubmit_Click" Font-Size="Large" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                </td>
            <td class="auto-style4">
                </td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="City Name" Font-Size="Large"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCityName" runat="server" AutoPostBack="True" ValidationGroup="MRAIP" Font-Size="Large"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="State Id" Font-Size="Large"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtStateId" runat="server" Font-Size="Large"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="errrlbl" runat="server" Text="Label" Font-Size="Medium"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

