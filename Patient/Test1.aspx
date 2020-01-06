<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/MasterPage.master" AutoEventWireup="true" CodeFile="Test1.aspx.cs" Inherits="Test1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 19px;
        }
    </style>
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
&nbsp;&nbsp;&nbsp; 
    <br />
    <table class="auto-style1">
        <tr>
             <h2 class="indent-1">UPLOAD IMAGE</h2>
        </tr>
        <br />
        <br />
        <br />
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" ForeColor="Black" Text="UserId" Font-Size="Medium"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtuid" runat="server" Font-Size="Medium"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" ForeColor="Black" Text="File Name" Font-Size="Medium"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Font-Size="Medium" />    
            </td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
    <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" />


            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
    <asp:Label ID="data" runat="server" ForeColor="Black" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
    <br />
    <br />
</asp:Content>

