<%@ Page Title="" Language="C#" MasterPageFile="~/Conversion/MasterPage.master" AutoEventWireup="true" CodeFile="PdfToCsv.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
        }
    .auto-style2 {
        width: 115px;
    }
        .auto-style9 {
            width: 291px;
        }
        .auto-style10 {
            width: 291px;
            height: 19px;
        }
        .auto-style11 {
            height: 19px;
        }
        .auto-style12 {
            width: 115px;
            height: 19px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 class="indent-1">UPLOAD PDF FILE</h2>
    <table>
        <tr>
            <td class="auto-style9">
        
                <asp:Label ID="Label4" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td class="auto-style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">
        
                <asp:Label ID="Label1" runat="server" Text="Select PDF File " Font-Size="Large"></asp:Label>
        
            </td>
            <td>
                <asp:FileUpload ID="PdfFileUpload1" runat="server" Font-Size="Large" />
            </td>
            <td class="auto-style2">
                &nbsp;</td>
        </tr>
        <tr>
             <td class="auto-style9">
        
                 &nbsp;</td>
             <td>
                 &nbsp;</td>
             <td class="auto-style2">
                 &nbsp;</td>
        </tr>
        <tr>
             <td class="auto-style9">
        
                <asp:Label ID="Label3" runat="server" Text="CSV File Name " Font-Size="Large"></asp:Label>
        
             </td>
             <td>
                <asp:TextBox ID="txtFileName" runat="server" Font-Size="Large"></asp:TextBox>
             </td>
             <td class="auto-style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFileName" ErrorMessage="NOT NULL" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
             </td>
        </tr>
        <tr>
             <td class="auto-style9">
        
                 &nbsp;</td>
             <td>
                 &nbsp;</td>
             <td class="auto-style2">
                 &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">
        
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Convert" Font-Size="Large" />
            </td>
            <td class="auto-style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">
        
                </td>
            <td class="auto-style11">
                </td>
            <td class="auto-style12">
                </td>
        </tr>
        <tr>
            <td class="auto-style1" colspan="3">
        
                <asp:HyperLink ID="HyperLink3" runat="server" Font-Size="Large" ForeColor="#000099" NavigateUrl="~/Conversion/CsvToDb.aspx">Store CSV file to Database</asp:HyperLink>
            </td>
        </tr>
     </table>
    <br />
    <br />
</asp:Content>

