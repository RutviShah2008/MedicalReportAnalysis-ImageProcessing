<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RegistrationMst.aspx.cs" Inherits="RegistrationMst" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <script src="JScript.js" type="text/javascript"></script>
  
     <script>
         
         $(document).ready(function (e) {
             $('#ContentPlaceHolder1_FileUpload1').bind('change', function () {
                 
                 size = this.files[0].size / 1024 / 1024;
                 
                 if (size > 2) {
                     alert("Uploaded file is Too large");
                    
                     $('#ContentPlaceHolder1_FileUpload1').val("");
                     $('#ContentPlaceHolder1_FileUpload1').focus();
                 } else {
                   
                     validateFile();
                 }
             });
         });
         function validateFile() {
             var allowedExtension = ['jpeg', 'jpg','png'];
             var fileExtension = document.getElementById('ContentPlaceHolder1_FileUpload1').value.split('.').pop().toLowerCase();
             var isValidFile = false;

             for (var index in allowedExtension) {

                 if (fileExtension === allowedExtension[index]) {
                     isValidFile = true;
                     break;
                 }
             }

             if (!isValidFile) {
                 $(document).ready(function (e) {
                     alert("Allowed Extensions not");
                     $('#ContentPlaceHolder1_FileUpload1').val("");
                     $('#ContentPlaceHolder1_FileUpload1').focus();
                 });
             }
         }

</script>

    <style type="text/css">
        .auto-style1 {
            height: 19px;
        }
        .auto-style2 {
            height: 19px;
            width: 130px;
        }
    </style>
 </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">
                </td>
            <td class="auto-style1">                
                    <h2 class="indent-1">Registration</h2>
            </td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style2">
            </td>
            <td class="auto-style1">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
            <td class="auto-style1">
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label20" runat="server" Text="User Type" ForeColor="#003366" Font-Size="Medium"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:DropDownList ID="ddlUserType" runat="server" Height="30px" Font-Size="Medium">
                    <asp:ListItem>Patient</asp:ListItem>
                    <asp:ListItem>Doctor</asp:ListItem>
                </asp:DropDownList>
                <br />
            </td>
            <td class="auto-style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="ddlUserType" ErrorMessage="Not Null" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label2" runat="server" Text="UserId" ForeColor="#003366" Font-Size="Medium"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="txtUserId" runat="server" Height="20px" Font-Size="Medium"></asp:TextBox>
                <br />
            </td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label3" runat="server" Text="Name" ForeColor="#003366" Font-Size="Medium"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="txtName" runat="server" onkeypress="return string_val(event);" Height="20px" Font-Size="Medium"></asp:TextBox>
                <br />
            </td>
            <td class="auto-style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Not Null" ForeColor="Red" ControlToValidate="txtName"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label22" runat="server" ForeColor="#000066" Text="Gender"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="auto-style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="Not Null" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label4" runat="server" Text="Street" ForeColor="#003366" Font-Size="Medium"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="txtAddress1" runat="server" Height="20px" Font-Size="Medium"></asp:TextBox>
                <br />
            </td>
            <td class="auto-style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Not Null" ForeColor="Red" ControlToValidate="txtAddress1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label5" runat="server" Text="Landmark" ForeColor="#003366" Font-Size="Medium"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="txtAddress2" runat="server" Height="20px" Font-Size="Medium"></asp:TextBox>
                <br />
            </td>
            <td class="auto-style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Not Null" ForeColor="Red" ControlToValidate="txtAddress2"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label6" runat="server" Text="State Name" ForeColor="#003366" Font-Size="Medium"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:DropDownList ID="ddlStateId" runat="server" DataSourceID="SqlDataSource1" DataTextField="StateName" DataValueField="StateId" AutoPostBack="True" Height="30px" Font-Size="Medium">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FinalConnection %>" SelectCommand="SELECT * FROM [StateMst]"></asp:SqlDataSource>
                <br />
            </td>
            <td class="auto-style1">
                <asp:Label ID="Label17" runat="server" ForeColor="Red" Text="Select State Name"></asp:Label>
                </td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label7" runat="server" Text="City Name" ForeColor="#003366" Font-Size="Medium"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:DropDownList ID="ddlCityId" runat="server" DataSourceID="SqlDataSource4" DataTextField="CityName" DataValueField="CityId" Height="30px" Font-Size="Medium">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:FinalConnection %>" SelectCommand="SELECT [CityId], [CityName] FROM [CityMst] WHERE ([StateID] = @StateID)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddlStateId" Name="StateID" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:FinalConnection %>" SelectCommand="SELECT * FROM [CityMst]"></asp:SqlDataSource>
                <br />
            </td>
            <td class="auto-style1">
                <asp:Label ID="Label18" runat="server" ForeColor="Red" Text="CityName"></asp:Label>
                </td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label8" runat="server" Text="PINCode" ForeColor="#003366" Font-Size="Medium"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="txtPINCode" runat="server" MaxLength="6" onkeypress="return numeric(event);" Height="20px" Font-Size="Medium"></asp:TextBox>
                <br />
            </td>
            <td class="auto-style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Not Null" ForeColor="Red" ControlToValidate="txtPINCode"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
            </td>
            <td class="auto-style1">
            </td>
            <td class="auto-style1">
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label9" runat="server" Text="ContactNo" ForeColor="#003366" Font-Size="Medium"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="txtContactNo" runat="server" MaxLength="10" Height="20px" Font-Size="Medium"></asp:TextBox>
                <br />
            </td>
            <td class="auto-style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Not Null" ForeColor="Red" ControlToValidate="txtContactNo"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label10" runat="server" Text="EmailId" ForeColor="#003366" Font-Size="Medium"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="txtEmailId" runat="server" AutoPostBack="True" OnTextChanged="txtEmailId_TextChanged" Height="20px" Font-Size="Medium"></asp:TextBox>
            </td>
            <td class="auto-style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Not Null" ForeColor="Red" ControlToValidate="txtEmailId"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmailId" ErrorMessage="Invalid Format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            &nbsp;<br />
                <asp:Label ID="Label21" runat="server" ForeColor="Red" Text="Email ID Already Exists"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label11" runat="server" Text="Hint" ForeColor="#003366" Font-Size="Medium"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:DropDownList ID="ddlQuestionId" runat="server" DataSourceID="SqlDataSource3" DataTextField="QDesc" DataValueField="QId" Height="30px" Font-Size="Medium">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:FinalConnection %>" SelectCommand="SELECT * FROM [QueMst]"></asp:SqlDataSource>
            </td>
            <td class="auto-style1">
                <asp:Label ID="Label19" runat="server" ForeColor="Red" Text="Select Question"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label12" runat="server" Text="Answer" ForeColor="#003366" Font-Size="Medium"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="txtAnswer" runat="server" Height="20px" Font-Size="Medium"></asp:TextBox>
                <br />
            </td>
            <td class="auto-style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Not Null" ForeColor="Red" ControlToValidate="txtAnswer"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label13" runat="server" Text="User Name" ForeColor="#003366" Font-Size="Medium"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="txtUserName" runat="server" MaxLength="10" OnTextChanged="txtUserName_TextChanged" Height="20px" Font-Size="Medium"></asp:TextBox>
            </td>
            <td class="auto-style1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Not Null" ForeColor="Red" ControlToValidate="txtUserName"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="Label16" runat="server" ForeColor="Red" Text="Already Exists"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label14" runat="server" Text="Password" ForeColor="#003366" Font-Size="Medium"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Height="20px" Font-Size="Medium"></asp:TextBox>
                <asp:PasswordStrength ID="txtPassword_PasswordStrength" runat="server" BehaviorID="txtPassword_PasswordStrength" TargetControlID="txtPassword">
                </asp:PasswordStrength>
                <br />
            </td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label15" runat="server" Text="Image" ForeColor="#003366" Font-Size="Medium"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:FileUpload ID="FileUpload1" runat="server" Height="30px" Font-Size="Medium" />
                <br />
            </td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" Font-Size="Medium" />
                <br />
            </td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style1">
                <asp:Label ID="errlbl" runat="server" Text="Label" ForeColor="#003366"></asp:Label>
            </td>
            <td class="auto-style1"></td>
        </tr>
    </table>
</asp:Content>

