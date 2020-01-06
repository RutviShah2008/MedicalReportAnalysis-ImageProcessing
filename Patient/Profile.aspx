<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/MasterPage.master" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="PatientAfterLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
        .auto-style2 {
            width: 183px;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <div class="grid_5">
                <h2 class="indent-1">PATIENT PROFILE</h2>
            </div>
    <br />
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Label" Font-Size="Large" ForeColor="#000066" Font-Bold="True"></asp:Label>
&nbsp;<asp:Label ID="Label2" runat="server" Text="Label" Font-Size="Large" ForeColor="#000066" Font-Bold="True"></asp:Label>
    <br />
<br />
<asp:DataList ID="DataList1" runat="server" CellPadding="4" DataKeyField="UserId" DataSourceID="SqlDataSource1" Width="400px" ForeColor="#333333" Font-Size="Medium">
    <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
    <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
    <ItemTemplate>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image") %>' Width="172px" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">User Id</td>
                <td>:</td>
                <td>
                    <asp:Label ID="UserIdLabel" runat="server" Text='<%# Eval("UserId") %>' />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Patient Name</td>
                <td>:</td>
                <td>
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Address</td>
                <td>:</td>
                <td>
                    <asp:Label ID="Address1Label" runat="server" Text='<%# Eval("Address1") %>' />
                    <br />
                    <asp:Label ID="Address2Label" runat="server" Text='<%# Eval("Address2") %>' />
                    <br />
                    <asp:Label ID="CityNameLabel" runat="server" Text='<%# Eval("CityName") %>' />
                    <br />
                    <asp:Label ID="StateNameLabel" runat="server" Text='<%# Eval("StateName") %>' />
                    <br />
                    <asp:Label ID="PINCodeLabel" runat="server" Text='<%# Eval("PINCode") %>' />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Contact No</td>
                <td>:</td>
                <td>
                    <asp:Label ID="ContactNoLabel" runat="server" Text='<%# Eval("ContactNo") %>' />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Email Id</td>
                <td>:</td>
                <td>
                    <asp:Label ID="EmailIdLabel" runat="server" Text='<%# Eval("EmailId") %>' />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </ItemTemplate>
    <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FinalConnection %>" SelectCommand="SELECT RegistrationMst.UserId, RegistrationMst.Name, RegistrationMst.Address1, RegistrationMst.Address2, RegistrationMst.ContactNo, RegistrationMst.EmailId, RegistrationMst.Image, StateMst.StateName, CityMst.CityName, RegistrationMst.PINCode FROM RegistrationMst INNER JOIN StateMst ON RegistrationMst.StateId = StateMst.StateId INNER JOIN CityMst ON RegistrationMst.CityId = CityMst.CityId WHERE (RegistrationMst.UserName = @UserName)">
    <SelectParameters>
        <asp:ControlParameter ControlID="Label2" Name="UserName" PropertyName="Text" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
    <br />
    <br />
    <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Size="Medium" Font-Underline="True" ForeColor="#000066" NavigateUrl="~/Conversion/imgtopdf.aspx">UPLOAD MEDICAL REPORT  HERE</asp:HyperLink>
    <br />
    <br />
    <br />
<br />
</asp:Content>

