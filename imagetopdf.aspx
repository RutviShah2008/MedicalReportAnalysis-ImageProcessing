<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="imagetopdf.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 255px;
        }
    .auto-style2 {
        width: 115px;
    }
        .auto-style3 {
            width: 255px;
            height: 19px;
        }
        .auto-style4 {
            height: 19px;
        }
        .auto-style5 {
            width: 115px;
            height: 19px;
        }
        .auto-style6 {
            width: 255px;
            height: 24px;
        }
        .auto-style7 {
            height: 24px;
        }
        .auto-style8 {
            width: 115px;
            height: 24px;
        }
        .auto-style9 {
            width: 255px;
            height: 38px;
        }
        .auto-style10 {
            height: 38px;
        }
        .auto-style11 {
            width: 115px;
            height: 38px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 class="indent-1">UPLOAD IMAGE</h2>
    <table>
        <tr>
            <td class="auto-style1">
        
                &nbsp;</td>
            <td>
                <asp:Label ID="Label15" runat="server" Font-Size="Larger" Text="Laboratory Name" Visible="False"></asp:Label>
            </td>
            <td class="auto-style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
        
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="auto-style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
        
                <asp:Label ID="Label10" runat="server" Font-Size="Large" Text="Patient Name"></asp:Label>
        
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="txtPatientName" runat="server" Font-Size="Large"></asp:TextBox>
            </td>
            <td class="auto-style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
        
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="auto-style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">
        
                <asp:Label ID="Label11" runat="server" Font-Size="Large" Text="Ref. Doctor Name"></asp:Label>
        
            </td>
            <td class="auto-style10">
                <asp:TextBox ID="txtRefDocName" runat="server" Font-Size="Large"></asp:TextBox>
            </td>
            <td class="auto-style11">
                </td>
        </tr>
        <tr>
            <td class="auto-style1">
        
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="auto-style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
        
                <asp:Label ID="Label12" runat="server" Font-Size="Large" Text="Age"></asp:Label>
        
            </td>
            <td>
                <asp:TextBox ID="txtAge" runat="server" Font-Size="Large"></asp:TextBox>
            </td>
            <td class="auto-style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
        
            </td>
            <td class="auto-style4">
            </td>
            <td class="auto-style5">
                </td>
        </tr>
        <tr>
            <td class="auto-style1">
        
                <asp:Label ID="Label13" runat="server" Font-Size="Large" Text="Gender"></asp:Label>
        
            </td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" Font-Size="Large">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="auto-style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
        
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="auto-style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
        
                <asp:Label ID="Label14" runat="server" Font-Size="Large" Text="Report Type "></asp:Label>
        
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="txtReportType" runat="server" Font-Size="Large"></asp:TextBox>
            </td>
            <td class="auto-style8">
                </td>
        </tr>
        <tr>
            <td class="auto-style1">
        
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="auto-style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
        
                <asp:Label ID="Label1" runat="server" Text="Select report " Font-Size="Large"></asp:Label>
        
            </td>
            <td>
                <asp:FileUpload ID="PdfFileUpload1" runat="server" Font-Size="Large" />
            </td>
            <td class="auto-style2">
                &nbsp;</td>
        </tr>
        <tr>
             <td class="auto-style1">
        
                 &nbsp;</td>
             <td>
                 &nbsp;</td>
             <td class="auto-style2">
                 &nbsp;</td>
        </tr>
        <tr>
             <td class="auto-style1">
        
                 &nbsp;</td>
             <td>
                <asp:Button ID="Button1" runat="server"     Text="Submit" Font-Size="Large" />
             </td>
             <td class="auto-style2">
                 &nbsp;</td>
        </tr>
        <tr>
             <td class="auto-style1">
        
                 &nbsp;</td>
             <td>
                 &nbsp;</td>
             <td class="auto-style2">
                 &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
        
                <asp:Label ID="Label3" runat="server" Text="Type File Name " Font-Size="Large"></asp:Label>
        
             </td>
            <td>
                <asp:TextBox ID="txtFileName" runat="server" Font-Size="Large"></asp:TextBox>
            </td>
            <td class="auto-style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFileName" ErrorMessage="NOT NULL" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
        
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="auto-style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
        
                <asp:HyperLink ID="HyperLink3" runat="server" Font-Size="Large" ForeColor="#000099" NavigateUrl="~/ExceltoDb.aspx" Visible="False">Go to Excel</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
            <td class="auto-style2">
                &nbsp;</td>
        </tr>
     </table>
    <br />
    <br />
</asp:Content>

