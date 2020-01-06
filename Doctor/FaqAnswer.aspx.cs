using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Doctor_FaqAnswer : System.Web.UI.Page
{
    Class1 obj = new Class1();
    int x;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label3.Text = "Welcome :";
        if (Session["doctor"] == null)
        {
            Response.Redirect("~/LoginPage.aspx/");
        }
        else
        {
            Label4.Text = Session["doctor"].ToString();
        }
        
        errlbl.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlParameter Id = new SqlParameter("@Id", TextBox1.Text);
        SqlParameter DoctorName = new SqlParameter("@DoctorName", Label4.Text);
        SqlParameter Answer = new SqlParameter("@Answer", TextBox2.Text);
        SqlParameter[] pdata = new SqlParameter[3] { Id,DoctorName, Answer };
        x = obj.insert("FaqAnswerInsertSp", pdata);//class method
        
        if (x != 0)
        {
            errlbl.Visible = true;
            TextBox1.Text = "";
            TextBox2.Text = "";
            //txtStateName.Text = null;
        }
        else
        {
            errlbl.Visible = true;
            errlbl.Text = "Invalid INfo";
        }
    
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}