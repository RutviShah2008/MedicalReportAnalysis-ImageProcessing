<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="City.aspx.cs" Inherits="City" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            height: 23px;
        }
        .auto-style4 {
            height: 30px;
        }
        .auto-style5 {
            height: 19px;
        }
        .auto-style6 {
    }
        .auto-style7 {
            height: 23px;
            width: 265px;
        }
        .auto-style8 {
            height: 26px;
            width: 265px;
        }
        .auto-style9 {
            height: 30px;
            width: 265px;
        }
        </style>
    <script src="JScript.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="grid_5">
                <h2 class="indent-1">CITY DETAILS</h2>
            </div>
    <table class="auto-style1">
        <tr>
            <td class="auto-style8">
                <asp:Label ID="Label1" runat="server" Text="City Id" ForeColor="Black" Font-Size="Large"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtCityId" runat="server" Font-Size="Large"></asp:TextBox>
            </td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td class="auto-style8">
                &nbsp;</td>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label3" runat="server" Text="City Name" ForeColor="Black" Font-Size="Large"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="txtCityName" runat="server" AutoPostBack="True" ValidationGroup="MRAIP" OnTextChanged="txtCityName_TextChanged" Font-Size="Large"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCityName" ErrorMessage="Not Null" ForeColor="Red" ValidationGroup="MRAIP"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style4">
                <asp:Label ID="Label5" runat="server" ForeColor="Red" Text="Already Exists"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">
                &nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Label ID="Label4" runat="server" Text="State Name" ForeColor="Black" Font-Size="Large"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlStateId" runat="server" DataSourceID="SqlDataSource1" DataTextField="StateName" DataValueField="StateId" ValidationGroup="MRAIP" OnSelectedIndexChanged="ddlStateId_SelectedIndexChanged" Font-Size="Large">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FinalConnection %>" SelectCommand="SELECT * FROM [StateMst]"></asp:SqlDataSource>
                <asp:Label ID="Label6" runat="server" ForeColor="#CC0000" Text="Label"></asp:Label>
&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td>
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" style="height: 26px" Font-Size="Large" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style5">
                <asp:Label ID="errlbl" runat="server" Text="Label" ForeColor="Black" Font-Size="Medium"></asp:Label>
            </td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6" colspan="3">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="CityId" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Height="150px" HorizontalAlign="Center" Width="390px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="CityId" HeaderText="CityId" ReadOnly="True" SortExpression="CityId" />
                        <asp:BoundField DataField="CityName" HeaderText="CityName" SortExpression="CityName" />
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FinalConnection %>" SelectCommand="SELECT CityMst.CityId, CityMst.CityName, StateMst.StateName FROM CityMst INNER JOIN StateMst ON CityMst.StateID = StateMst.StateId"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

