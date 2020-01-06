<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 19px;
        }
        .auto-style2 {
            width: 152px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <h2 class="indent-1">UPLOAD CSV FILE</h2>
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
            <td class="auto-style9">
        
                <asp:Label ID="Label11" runat="server" Font-Size="Large" Text="Ref. Doctor Name"></asp:Label>
        
            </td>
            <td class="auto-style10">
                <asp:TextBox ID="txtRefDocName" runat="server" Font-Size="Large"></asp:TextBox>
            </td>
            <td class="auto-style2">
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
            <td class="auto-style2">
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
            <td class="auto-style2">
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
        
                <asp:Label ID="Label16" runat="server" Text="Choose CSV File"></asp:Label>
            </td>
            <td>
    <asp:FileUpload ID="FileUpload1" runat="server" />
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
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            </td>
            <td class="auto-style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
        
                <asp:HyperLink ID="HyperLink3" runat="server" Font-Size="Large" ForeColor="#000099" NavigateUrl="~/Patient/ReportFilterData.aspx" Visible="False">Go to Excel</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
            <td class="auto-style2">
                &nbsp;</td>
        </tr>
     </table>
    <br />
    <br />
    <br />
</asp:Content>

