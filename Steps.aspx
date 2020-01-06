<%@ Page Title="" Language="C#" MasterPageFile="~/Link.master" AutoEventWireup="true" CodeFile="Steps.aspx.cs" Inherits="Work" %>

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
        .auto-style4 {
            width: 6px;
        }
        .auto-style5 {
            width: 376px;
        }
        .auto-style6 {
            width: 1px;
        }
        .auto-style7 {
            width: 55%;
        }
        .auto-style8 {
            width: 55%;
            height: 19px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <table class="auto-style1" >
          <tr>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">                
                <asp:Label ID="Label1" runat="server" Font-Names="Arial" Font-Size="X-Large" ForeColor="#CC3300" Text="1.Upload Image"></asp:Label>
                <br />                
                <br />
                <asp:Label ID="Label2" runat="server" Font-Names="Arial" Font-Size="Large" ForeColor="Black"></asp:Label>
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
                <asp:Image ID="Image1" runat="server" Height="250px" ImageUrl="~/images/step1.PNG" Width="400px" ImageAlign="Left" />
            </td>
        </tr>
          <tr>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table class="auto-style1">
            <tr>
            <td>
                <asp:Image ID="Image2" runat="server" Height="268px" ImageUrl="~/images/step2.PNG" Width="377px" />
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
                <asp:Label ID="Label3" runat="server" Font-Names="Arial" Font-Size="X-Large" ForeColor="#CC3300" Text="2. Upload downloaded PDF file"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label4" runat="server" Font-Names="Arial" Font-Size="Large" ForeColor="Black"></asp:Label>
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
                <asp:Label ID="Label5" runat="server" Font-Names="Arial" Font-Size="X-Large" ForeColor="#CC3300" Text="3. Upload downloaded CSV File"></asp:Label>
                <br />                
                <br />
                <asp:Label ID="Label6" runat="server" Font-Names="Arial" Font-Size="Large" ForeColor="Black"></asp:Label>
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
                <asp:Image ID="Image3" runat="server" Height="330px" ImageUrl="~/images/step3.PNG" Width="320px" ImageAlign="Left" />
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
            <td class="auto-style5">
                <asp:Image ID="Image4" runat="server" Height="400px" ImageUrl="~/images/step4.PNG" Width="395px" />
            </td>  
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>              
            <td>
                <asp:Label ID="Label7" runat="server" Font-Names="Arial" Font-Size="X-Large" ForeColor="#CC3300" Text="4. View report"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label8" runat="server" Font-Names="Arial" Font-Size="Large" ForeColor="Black"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

