<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="QuestionMst.aspx.cs" Inherits="QuestionMst" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            height: 30px;
        }
        .auto-style4 {
            width: 404px;
        }
        .auto-style5 {
            height: 30px;
            width: 404px;
        }
        .auto-style6 {
            height: 23px;
            width: 404px;
        }
    </style>
        <script src="JScript.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="grid_5">
                <h2 class="indent-1">HINT</h2>
            </div>
    <table class="auto-style1">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Hint" ForeColor="Black" Font-Size="Medium"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="txtQId" runat="server" Font-Size="Medium"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label2" runat="server" Text="Question" ForeColor="Black" Font-Size="Medium"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="txtQDesc" runat="server" AutoPostBack="True" OnTextChanged="txtQDesc_TextChanged" Font-Size="Medium"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtQDesc" ErrorMessage="Not Null" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style3">
                <asp:Label ID="Label3" runat="server" ForeColor="Red" Text="Already Exist"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style4">
                <asp:Button ID="btnSubmit" runat="server" OnClick="Button1_Click" Text="Submit" Font-Size="Medium" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style6">
                <asp:Label ID="errlbl" runat="server" Text="Label" ForeColor="Black" Font-Size="Medium"></asp:Label>
            </td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="3">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="QId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="150px" Width="390px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="QId" HeaderText="QId" ReadOnly="True" SortExpression="QId" />
                        <asp:BoundField DataField="QDesc" HeaderText="QDesc" SortExpression="QDesc" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FinalConnection %>" SelectCommand="SELECT QId, QDesc FROM QueMst"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style6">
                &nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style6">
                &nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

