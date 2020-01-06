<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FileUploadSearch.aspx.cs" Inherits="FileUpload" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            height: 45px;
        }
    </style>
        <script src="JScript.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label7" runat="server" Text="File Upload Search" ForeColor="#FFFFCC"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="FileUploadId" ForeColor="White"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtFileUploadId" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFileUploadId" ErrorMessage="Not Null" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
            </td>
            <td class="auto-style2">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            </td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td class="auto-style2">
                </td>
            <td class="auto-style2">
                </td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="UserId" ForeColor="White"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlUserId" runat="server" DataSourceID="SqlDataSource1" DataTextField="UserId" DataValueField="UserId" >
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FinalConnection %>" SelectCommand="SELECT [UserId] FROM [RegistrationMst]"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label3" runat="server" Text="FileTypeId" ForeColor="White"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:DropDownList ID="ddlFileTypeId" runat="server" DataSourceID="SqlDataSource2" DataTextField="FileTypeId" DataValueField="FileTypeId">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FinalConnection %>" SelectCommand="SELECT [FileTypeId] FROM [FileTypeMst]"></asp:SqlDataSource>
            </td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="FileName" ForeColor="White"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtFileName" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="FileLocation" ForeColor="White"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtFileLocation" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Size" ForeColor="White"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtFileSize" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

