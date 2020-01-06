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
    int x;
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        txtQId.Enabled = false;
        errlbl.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlParameter qid = new SqlParameter("@QId", txtQId.Text);
        SqlParameter qdesc = new SqlParameter("@Question", txtQDesc.Text);

        SqlParameter[] pdata = new SqlParameter[2] { qid,qdesc };
        x = obj.insert("QuestionUpdateSp", pdata);//class method

        if (x != 0)
        {
            errlbl.Visible = true;
            errlbl.Text = "Successfully Inserted";
            GridView1.DataBind();
            txtQId.Text = null;
            txtQDesc.Text = null;
        }
        else
        {
            errlbl.Visible = true;
            errlbl.Text = "Invalid INfo";
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow row;
        row = GridView1.SelectedRow;
        txtQId.Text = row.Cells[1].Text;
        txtQDesc.Text = row.Cells[2].Text;
    }
}