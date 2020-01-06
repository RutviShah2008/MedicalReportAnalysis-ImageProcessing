<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FileUpload.aspx.cs" Inherits="FileUpload" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            height: 22px;
        }
    </style>
        <script src="JScript.js">
        </script>
    <script>
        $(document).ready(function (e) {
            $('#ContentPlaceHolder1_FileUpload1').bind('change', function () {
                size = this.files[0].size / 1024 / 1024;

                if (size > 2) {
                    alert("Uploaded file is Too large");

                    $('#ContentPlaceHolder1_FileUpload1').val("");
                    $('#ContentPlaceHolder1_FileUpload1').focus();
                } else {

                    validateFile();
                }
            });
        });
        function validateFile() {
            var allowedExtension = ['jpeg', 'jpg', 'png'];
            var fileExtension = document.getElementById('ContentPlaceHolder1_FileUpload1').value.split('.').pop().toLowerCase();
            var isValidFile = false;

            for (var index in allowedExtension) {

                if (fileExtension === allowedExtension[index]) {
                    isValidFile = true;
                    break;
                }
            }

            if (!isValidFile) {
                $(document).ready(function (e) {
                    alert("Allowed Extensions not");
                    $('#ContentPlaceHolder1_FileUpload1').val("");
                    $('#ContentPlaceHolder1_FileUpload1').focus();
                });
            }
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label7" runat="server" Text="File Upload" ForeColor="Black"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label1" runat="server" Text="FileUploadId" ForeColor="Black"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtFileUploadId" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="UserId" ForeColor="Black"></asp:Label>
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
                <asp:Label ID="Label3" runat="server" Text="FileTypeId" ForeColor="Black"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlFileTypeId" runat="server" DataSourceID="SqlDataSource2" DataTextField="FileTypeName" DataValueField="FileTypeId">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FinalConnection %>" SelectCommand="SELECT * FROM [FileTypeMst]"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="FileName" ForeColor="Black"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtFileName" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="FileLocation" ForeColor="Black"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtFileLocation" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label6" runat="server" Text="Size" ForeColor="Black"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="txtFileSize" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style3"></td>
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
                <asp:Label ID="errlbl" runat="server" ForeColor="White" Text="Label"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

