<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="StateMst.aspx.cs" Inherits="StateMst" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            height: 26px;
        }
    .auto-style4 {
        height: 29px;
    }
        .auto-style5 {
            height: 19px;
        }
    </style>
    <script src="JScript.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="grid_5">
                <h2 class="indent-1">STATE DETAILS</h2>
            </div>
    <table class="auto-style1">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="StateId" Font-Size="Medium" ForeColor="Black"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtStateId" runat="server" Font-Size="Medium"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label2" runat="server" Text="State Name" Font-Size="Medium" ForeColor="Black"></asp:Label>
            </td>
            <td class="auto-style3">
                &nbsp;<asp:TextBox ID="txtStateName" runat="server" AutoPostBack="True" OnTextChanged="txtStateName_TextChanged" Font-Size="Medium"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtStateName" ErrorMessage="Not Null" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style3">
                <asp:Label ID="Label3" runat="server" ForeColor="Red" Text="Already Exists"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style4">
                &nbsp;<asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" Font-Size="Medium" />
            </td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style5">
                <asp:Label ID="errlbl" runat="server" Text="Label" ForeColor="Black"></asp:Label>
            </td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="StateId" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="StateId" HeaderText="StateId" ReadOnly="True" SortExpression="StateId" />
                        <asp:BoundField DataField="StateName" HeaderText="StateName" SortExpression="StateName" />
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FinalConnection %>" SelectCommand="SELECT * FROM [StateMst]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

