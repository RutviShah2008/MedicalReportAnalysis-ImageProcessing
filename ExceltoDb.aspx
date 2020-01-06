<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ExceltoDb.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <table>
        <tr>
            <td class="auto-style1">
        
                &nbsp;</td>
            <td>
                <asp:Label ID="Label15" runat="server" Font-Size="Larger" Text="Laboratory Name"></asp:Label>
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
            <td class="auto-style1">
        
                <asp:Label ID="Label1" runat="server" Text="Select PDF File " Font-Size="Large"></asp:Label>
        
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
                <asp:Button ID="Button2" runat="server" OnClick="Button1_Click" Text="Submit" Font-Size="Large" />
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
        
                <asp:HyperLink ID="HyperLink3" runat="server" Font-Size="Large" ForeColor="#000099" NavigateUrl="~/ExceltoDb.aspx">Go to Excel</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
            <td class="auto-style2">
                &nbsp;</td>
        </tr>
     </table>
    
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" />
        <br />
    
    </div>
    </form>
</body>
</html>
