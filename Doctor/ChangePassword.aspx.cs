using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class ChangePassword : System.Web.UI.Page
{
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
       // Label7.Text = obj.userselect("select userid from registrationmst where username='"+Session["un"].ToString()+"'").ToString();


        if (!Page.IsPostBack)
        {
            txtUsername.Enabled = false;
            if (Session["doctor"] == null)
            {
                Response.Redirect("~/LoginPage.aspx");
            }
            else
            {
                txtUsername.Text = Session["doctor"].ToString();
            }
           
           //errlbl.Visible = false;
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SqlParameter un = new SqlParameter("@UserName", txtUsername.Text);
        SqlParameter oldpwd = new SqlParameter("@OldPassWord", txtOldPwd.Text);
        SqlParameter newpwd = new SqlParameter("NewPassword", txtNewPwd.Text);

        SqlParameter[] pdata = new SqlParameter[3] { un, oldpwd, newpwd };
        int x = obj.insert("ChangePwdUpdate", pdata);
        Label6.Text = "" + x;
        if (x != 0)
        {
            Label6.Visible = true;
            Label6.Text = " Successfully Password Updated ";

        }
        
    }
}