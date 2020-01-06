using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class LoginPage : System.Web.UI.Page
{
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        errlbl.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int flag = 0;
        if (flag == 0 && RadioButtonList1.SelectedIndex == 0)
        {

            SqlParameter aun = new SqlParameter("@UserName", txtUserName.Text);
            SqlParameter apw = new SqlParameter("@PassWord", txtPassword.Text);

            SqlParameter[] pdata = new SqlParameter[2] { aun, apw };
            int x = obj.check("AdminLogin", pdata);
            if (x != 0)
            {
                flag=1;
                errlbl.Visible = true;
                errlbl.Text = "Successfully Login";
                Session["admin"] = txtUserName.Text;
                Response.Redirect("~/Admin/Home.aspx");

            }   
        }

        if (flag == 0 && RadioButtonList1.SelectedIndex == 1)
        {

            SqlParameter un = new SqlParameter("@UserName", txtUserName.Text);
            SqlParameter pw = new SqlParameter("@PassWord", txtPassword.Text);

            SqlParameter[] pdata = new SqlParameter[2] { un, pw };
            int x = obj.check("UserLogin", pdata);
            if (x != 0)
            {
                flag=1;
                errlbl.Visible = true;
                errlbl.Text = "Successfully Login";
                Session["doctor"] = txtUserName.Text;
                Response.Redirect("~/Doctor/DoctorAfterLogin.aspx");

            }

        }
        if (flag == 0 && RadioButtonList1.SelectedIndex == 2)
        {

            SqlParameter un = new SqlParameter("@UserName", txtUserName.Text);
            SqlParameter pw = new SqlParameter("@PassWord", txtPassword.Text);

            SqlParameter[] pdata = new SqlParameter[2] { un, pw };
            int x = obj.check("PatientLogin", pdata);
            if (x != 0)
            {
                flag = 1;
                errlbl.Visible = true;
                errlbl.Text = "Successfully Login";
                Session["patient"] = txtUserName.Text;
                Response.Redirect("~/patient/Profile.aspx");

            }

        }
        if (flag == 0)
        {
            errlbl.Visible = true;
            errlbl.Text = "Invalid Info";
        }

    }
}