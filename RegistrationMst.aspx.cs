using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class RegistrationMst : System.Web.UI.Page
{
    Class1 obj = new Class1();
    int x;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            SqlParameter uid = new SqlParameter("@UserId", SqlDbType.Int);
            txtUserId.Text = obj.max("MaxUserId", uid).ToString();
            ddlStateId.DataBind();
            ddlStateId.Items.Insert(0, new ListItem("Select State", string.Empty));
            ddlCityId.DataBind();
            ddlCityId.Items.Insert(0, new ListItem("Select City", string.Empty));
            ddlQuestionId.DataBind();
            ddlQuestionId.Items.Insert(0, new ListItem("Select Question", string.Empty));
            errlbl.Visible = false;
            Label16.Visible = false;
            Label17.Visible = false;
            Label18.Visible = false;
            Label19.Visible = false;
            Label21.Visible = false;
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        int x = 1;
        if (string.Compare(ddlStateId.SelectedItem.Text, "Select State") == 0) 
        {
            ddlStateId.Focus();
            Label17.Visible = true;
            Label17.Text = "Select State";
            x = 0;
        }
        else
        {
            Label17.Visible = false;
        }
   
        if (string.Compare(ddlCityId.SelectedItem.Text, "Select City") == 0)
        {
            ddlCityId.Focus();
            Label18.Visible = true;
            Label18.Text = "Select City";
            x = 0;
        }
        else
        {
            Label18.Visible = false;

        }
        if(string.Compare(ddlQuestionId.SelectedItem.Text, "Select Question") == 0)
        {
            ddlQuestionId.Focus();
            Label19.Visible = true;
            Label19.Text = "Select Question";
            x = 0;
        }
        else
        {
            Label19.Visible = false;
        }
        if(x==1)
        {
            string temp = null;
            if (FileUpload1.HasFile)
            {
                temp = "~/Image/" + FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath(temp));
            }
            SqlParameter ut = new SqlParameter("@UserType", ddlUserType.Text);
            SqlParameter uid = new SqlParameter("@UserId", txtUserId.Text);
            SqlParameter name = new SqlParameter("@Name", txtName.Text);
           // SqlParameter gender = new SqlParameter("@Gender", RadioButtonList1.Text);
            SqlParameter add1 = new SqlParameter("@Address1", txtAddress1.Text);
            SqlParameter add2 = new SqlParameter("@Address2", txtAddress2.Text);
            SqlParameter sid = new SqlParameter("@StateId", ddlStateId.Text);
            SqlParameter cid = new SqlParameter("@CityId", ddlCityId.Text);
            SqlParameter PINCode = new SqlParameter("@PINCode", txtPINCode.Text);
            SqlParameter ContactNo = new SqlParameter("@ContactNo", txtContactNo.Text);
            SqlParameter Email = new SqlParameter("@EmailId", txtEmailId.Text);
            SqlParameter QuestionId = new SqlParameter("@QuestionId", ddlQuestionId.Text);
            SqlParameter Ans = new SqlParameter("@Answer", txtAnswer.Text);
            SqlParameter UName = new SqlParameter("@UserName", txtUserName.Text);
            SqlParameter Password = new SqlParameter("@Password", txtPassword.Text);
            SqlParameter Image = new SqlParameter("@Image", temp.ToString());

            SqlParameter[] pdata = new SqlParameter[15] {ut,uid,name,add1,add2,sid,cid,PINCode,ContactNo,Email,QuestionId
            ,Ans,UName,Password,Image};

            x = obj.insert("RegistrationInsertSp", pdata);

            if (x != 0)
            {
                errlbl.Visible = true;
                errlbl.Text = "Successfully Inserted";
                Response.Redirect("~/LoginPage.aspx");
            }
            else
            {
                errlbl.Visible = true;
                errlbl.Text = "Invalid INfo";
            }
        }
    }
    protected void txtUserName_TextChanged(object sender, EventArgs e)
    {
        SqlParameter UName = new SqlParameter("@UserName",txtUserName.Text);
        SqlParameter[] pdata = new SqlParameter[1] { UName };
        x = obj.check("RegistrationUNameSp", pdata);//class method

        if (x != 0)
        {
            Label16.Visible = true;
            txtUserName.Text = null;
            txtUserName.Focus();
        }
        else
        {
            Label16.Visible = false;
        }
    }
    protected void txtEmailId_TextChanged(object sender, EventArgs e)
    {
        SqlParameter EmailId = new SqlParameter("@EmailId", txtEmailId.Text);
        SqlParameter[] pdata = new SqlParameter[1] { EmailId };
        x = obj.check("RegistrationEmailIdSp", pdata);//class method

        if (x != 0)
        {
            Label21.Visible = true;
            txtEmailId.Text = null;
            txtEmailId.Focus();
        }
        else
        {
            Label21.Visible = false;
        }
    }
 
}