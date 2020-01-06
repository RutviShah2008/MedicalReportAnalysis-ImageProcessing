<%@ Page Title="" Language="C#" MasterPageFile="~/Patient/check.master" AutoEventWireup="true" CodeFile="ReportFilterData - Copy.aspx.cs" Inherits="Patient_ReportFilterData" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" Visible="False" />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
    <br />
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="2" ForeColor="Black" GridLines="None" Height="200px" Width="750px" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:BoundField DataField="PatientName" HeaderText="PatientName" SortExpression="PatientName" />
            <asp:BoundField DataField="RefDocName" HeaderText="RefDocName" SortExpression="RefDocName" />
            <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
            <asp:BoundField DataField="ReportType" HeaderText="ReportType" SortExpression="ReportType" />
        </Columns>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FinalConnection %>" SelectCommand="SELECT [PatientName], [RefDocName], [Age], [Gender], [ReportType] FROM [PatientInfo] WHERE ([PatientName] = @PatientName)">
        <SelectParameters>
            <asp:ControlParameter ControlID="Label2" Name="PatientName" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" CellPadding="2" ForeColor="Black" GridLines="None" Height="300px" Width="750px" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
    </asp:GridView>
       

    <br />
    <br />
    <asp:Button ID="Button2" runat="server" Text="Send report to Doctor" OnClick="Button2_Click1" Font-Size="Large" />
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Font-Size="Large" ForeColor="Red" Text="Label"></asp:Label>
    <br />
    <br />
    <asp:Button ID="btnExport" runat="server" OnClick="btnExport_Click" Text="Download Report" Font-Size="Large" ForeColor="#00CC00" />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

