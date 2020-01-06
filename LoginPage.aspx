<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LoginPage.aspx.cs" Inherits="LoginPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 25px;
        }
    </style>
        <script src="JScript.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td colspan="3">
                <h2 class="indent-1">Login To HealthPress</h2>                
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" ForeColor="Black" RepeatDirection="Horizontal" Font-Size="Large" >
                    <asp:ListItem>Admin</asp:ListItem>
                    <asp:ListItem>Doctor</asp:ListItem>
                    <asp:ListItem>Patient</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="User Name" ForeColor="Black" Font-Size="Large"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtUserName" runat="server" placeholder="User Name" Font-Size="Large" Height="100%" Width="50%"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserName" ErrorMessage="Not Null" ForeColor="Red"></asp:RequiredFieldValidator>
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
            <td class="auto-style2">
                <asp:Label ID="Label3" runat="server" Text="Password" ForeColor="Black" Font-Size="Large"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtPassword" runat="server" placeholder="Password" TextMode="Password" Font-Size="Large" Height="100%" Width="50%"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="Not Null" ForeColor="Red"></asp:RequiredFieldValidator>
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
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="LogIn" OnClick="Button1_Click" Font-Size="Large" Height="100%" Width="50%" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="errlbl" runat="server" Text="Label" ForeColor="Black"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:HyperLink ID="HyperLink3" runat="server" Font-Size="Large" Font-Underline="True" ForeColor="#000066" NavigateUrl="~/ForgotPassword.aspx">? Forgot password</asp:HyperLink>
            </td>
            <td>
                <br />
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

