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
        if (Session["doctor"] == null)
        {
            Response.Redirect("~/LoginPage.aspx");
        }
        else
        {
            if (!Page.IsPostBack)
            {

                DataSet ds = obj.selectall("select * from registrationmst where username='" + Session["doctor"] + "'");
                foreach (DataRow temp in ds.Tables[0].Rows)
                {
                    txtUserId.Text = temp["UserId"].ToString();
                    txtName.Text = temp["Name"].ToString();
                    txtAddress1.Text = temp["Address1"].ToString();
                    txtAddress2.Text = temp["Address2"].ToString();
                    ddlStateId.Text = temp["StateId"].ToString();
                    ddlCityId.Text = temp["CityId"].ToString();
                    txtPINCode.Text = temp["PINCode"].ToString();
                    txtContactNo.Text = temp["ContactNo"].ToString();
                    txtEmailId.Text = temp["EmailId"].ToString();
                    ddlQuestionId.Text = temp["QuestionId"].ToString();
                    txtAnswer.Text = temp["Answer"].ToString();
                    txtUserName.Text = temp["UserName"].ToString();
                    txtPassword.Text = temp["Password"].ToString();
                }
                txtUserId.Enabled = false;
                errlbl.Visible = false;
            }
        }
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
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
            Response.Redirect("~/RegistrationMst.aspx");
        }
        else
        {
            errlbl.Visible = true;
            errlbl.Text = "Invalid INfo";
        }
    }

}