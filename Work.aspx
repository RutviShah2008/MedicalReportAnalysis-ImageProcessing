<%@ Page Title="" Language="C#" MasterPageFile="~/Link.master" AutoEventWireup="true" CodeFile="Work.aspx.cs" Inherits="Work" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 800px;
        }
        .auto-style2 {
            width: 70%;
            height:19px;
        }
        .auto-style3 {
            width: 30%;
            height:19px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <table class="auto-style1" >
          <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">                
                <asp:Label ID="Label1" runat="server" Font-Names="Arial" Font-Size="X-Large" ForeColor="#003366" Text="1.Submit Your Case"></asp:Label>
                <br />                
                <br />
                <asp:Label ID="Label2" runat="server" Font-Names="Arial" Font-Size="Large" ForeColor="Black" Text="Complete our online patient questionnaire and upload your medical information, all of which can be done anonymously."></asp:Label>
                <br />                
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
             <td class="auto-style3">
                <asp:Image ID="Image1" runat="server" Height="283px" ImageUrl="~/images/vv.PNG" Width="300px" ImageAlign="Left" />
            </td>
        </tr>
          <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table class="auto-style1">
            <tr>
            <td>
                <asp:Image ID="Image2" runat="server" Height="268px" ImageUrl="~/images/zz.PNG" Width="377px" />
            </td>  
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>              
            <td>
                <asp:Label ID="Label3" runat="server" Font-Names="Arial" Font-Size="X-Large" ForeColor="#003366" Text="2. Harness the Wisdom "></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label4" runat="server" Font-Names="Arial" Font-Size="Large" ForeColor="Black" Text="Our technology collects and filters diagnostic and solution suggestions from the Medical Detectives who participate in your case. "></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table class="auto-style1"   >
        <tr>
            <td class="auto-style2">               
                <asp:Label ID="Label5" runat="server" Font-Names="Arial" Font-Size="X-Large" ForeColor="#003366" Text="3. Get Your Report"></asp:Label>
                <br />                
                <br />
                <asp:Label ID="Label6" runat="server" Font-Names="Arial" Font-Size="Large" ForeColor="Black" Text="At the end of this process, you'll receive a detailed report containing the best suggestions to discuss with your doctor."></asp:Label>
                <br />                
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>

            <td class="auto-style2">
                <asp:Image ID="Image3" runat="server" Height="311px" ImageUrl="~/images/cc.PNG" Width="297px" ImageAlign="Left" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="Large" ForeColor="#CC3300" NavigateUrl="~/Steps.aspx">Steps to analys your report</asp:HyperLink>
            </td>
            <td>&nbsp;</td>
        </tr>
            </table>
</asp:Content>

