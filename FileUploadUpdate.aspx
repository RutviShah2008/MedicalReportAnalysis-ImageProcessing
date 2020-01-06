<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FileUploadUpdate.aspx.cs" Inherits="FileUpload" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
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
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="FileUploadId" DataSourceID="SqlDataSource3" ForeColor="White" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="FileUploadId" HeaderText="FileUploadId" ReadOnly="True" SortExpression="FileUploadId" />
                        <asp:BoundField DataField="UserId" HeaderText="UserId" SortExpression="UserId" />
                        <asp:BoundField DataField="FileTypeId" HeaderText="FileTypeId" SortExpression="FileTypeId" />
                        <asp:BoundField DataField="FileName" HeaderText="FileName" SortExpression="FileName" />
                        <asp:BoundField DataField="FileLocation" HeaderText="FileLocation" SortExpression="FileLocation" />
                        <asp:BoundField DataField="Size" HeaderText="Size" SortExpression="Size" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:FinalConnection %>" SelectCommand="SELECT * FROM [FileUpload]"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="FileUploadId" ForeColor="White"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtFileUploadId" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="UserId" ForeColor="White"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlUserId" runat="server" DataSourceID="SqlDataSource1" DataTextField="UserId" DataValueField="UserId">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FinalConnection %>" SelectCommand="SELECT [UserId] FROM [RegistrationMst]"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="FileTypeId" ForeColor="White"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlFileTypeId" runat="server" DataSourceID="SqlDataSource2" DataTextField="FileTypeId" DataValueField="FileTypeId">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FinalConnection %>" SelectCommand="SELECT [FileTypeId] FROM [FileTypeMst]"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label4" runat="server" Text="FileName" ForeColor="White"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtFileName" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style2"></td>
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
                <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="errlbl17" runat="server" ForeColor="White" Text="Label"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

