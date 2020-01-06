using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class AskaQuestion : System.Web.UI.Page
{
    Class1 obj = new Class1();
    int x;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = "Welcome :";
        Label3.Text = Session["patient"].ToString();
        errlbl.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlParameter PatientName = new SqlParameter("@PatientName", Label3.Text);
        SqlParameter Content = new SqlParameter("@Content", TextBox1.Text);
        SqlParameter[] pdata = new SqlParameter[2] { PatientName,Content };
        x = obj.insert("FaqQuestionInsertSp", pdata);//class method


        if (x != 0)
        {
            errlbl.Visible = true;
            //txtStateName.Text = null;
            TextBox1.Text = "";
        }
        else
        {
            errlbl.Visible = true;
            errlbl.Text = "Invalid INfo";
        }
    
    }
}