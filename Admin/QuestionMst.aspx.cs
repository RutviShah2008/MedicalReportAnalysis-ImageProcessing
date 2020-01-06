using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class QuestionMst : System.Web.UI.Page
{
    Class1 obj = new Class1();
    int x;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {


            SqlParameter sid = new SqlParameter("@Hint", SqlDbType.Int);
            txtQId.Text = obj.max("MaxQueId", sid).ToString();
            errlbl.Visible = false;
            Label3.Visible = false;
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         SqlParameter Qid = new SqlParameter("@Hint", txtQId.Text);
        SqlParameter Qdesc = new SqlParameter("@Answer", txtQDesc.Text);
        SqlParameter[] pdata = new SqlParameter[2] { Qid, Qdesc };
        x = obj.insert("QueInsertSp", pdata);//class method


        if (x != 0)
        {
            errlbl.Visible = true;
            errlbl.Text = "Successfully Inserted";
            //txtStateName.Text = null;
            Response.Redirect("QuestionMst.aspx");
        }
        else
        {
            errlbl.Visible = true;
            errlbl.Text = "Invalid INfo";
        }
    
    }
    protected void txtQDesc_TextChanged(object sender, EventArgs e)
    {
        SqlParameter Qdesc = new SqlParameter("@Question", txtQDesc.Text);
        SqlParameter[] pdata = new SqlParameter[1] {Qdesc };
        x = obj.check("QueDescSp", pdata);//class method

        if (x != 0)
        {
            Label3.Visible = true;
            txtQId.Text = null;
            txtQDesc.Focus();
        }

    }
}