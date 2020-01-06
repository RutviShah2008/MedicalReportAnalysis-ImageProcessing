using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class AdminMst : System.Web.UI.Page
{
    Class1 obj = new Class1();
    int x;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SqlParameter UserName = new SqlParameter("@UserName",txtUserName.Text);
        SqlParameter Password = new SqlParameter("@Password", txtPassword.Text);
        //SqlParameter sid = new SqlParameter("@StateId", ddlStateId.SelectedValue);

        SqlParameter[] pdata = new SqlParameter[2] { UserName, Password};
        x = obj.insert("AdminInsertSp", pdata);//class method
        

        if (x != 0)
        {
            errlbl.Visible = true;
            errlbl.Text = "Successfully Inserted";
            //txtCityName.Text = null;
            Session["UName"] = txtUserName.Text;
            Response.Redirect("~/Admin/Home.aspx");
            
        }
        else
        {
            errlbl.Visible = true;
            errlbl.Text = "Invalid INfo";
        }

    }
}