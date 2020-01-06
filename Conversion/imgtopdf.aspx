<%@ Page Title="" Language="C#" MasterPageFile="~/Conversion/MasterPage.master" AutoEventWireup="true" CodeFile="imgtopdf.aspx.cs" Inherits="Conversion_imgtopdf" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   
    <div>
    <h2 class="indent-1">UPLOAD IMAGE</h2>
       
    
        <table class="style1">
            <tr>
                <td style="width: 212px">
                    <asp:Label ID="Label1" runat="server" Text="Select Image File" Font-Size="Large"></asp:Label>
                </td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" Font-Size="Large" />
                </td>
            </tr>
            <tr>
                <td style="width: 212px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 212px">
                    <asp:Label ID="Label2" runat="server" Text="PDF Name" Font-Size="Large"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Font-Size="Large"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 212px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="height: 26px; width: 212px">
                    </td>
                <td style="height: 26px">
                    <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="Convert" Font-Size="Large" />
                </td>
            </tr>
            <tr>
                <td style="height: 26px; width: 212px">
                    &nbsp;</td>
                <td style="height: 26px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="height: 26px; width: 212px">
                    <asp:HyperLink ID="HyperLink3" runat="server" Font-Size="Large" ForeColor="#0000CC" NavigateUrl="~/Conversion/PdfToCsv.aspx">Convert Pdf to CSV file</asp:HyperLink>
                </td>
                <td style="height: 26px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 212px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    
</asp:Content>

