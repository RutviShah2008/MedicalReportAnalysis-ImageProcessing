using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class StateMst : System.Web.UI.Page
{
    Class1 obj = new Class1();
    int x;
    protected void Page_Load(object sender, EventArgs e)
    {
        txtStateId.Enabled = false;
        errlbl.Visible = false;
    }
    protected void txtStateName_TextChanged(object sender, EventArgs e)
    {

    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        SqlParameter sname = new SqlParameter("@StateName", txtStateName.Text);
        SqlParameter[] pdata = new SqlParameter[1] { sname };
        x = obj.insert("StateUpdateSp", pdata);//class method
        if (x != 0)
        {
            errlbl.Visible = true;
            errlbl.Text = "Successfully Updated";
            GridView1.DataBind();
            txtStateId.Text = null;
            txtStateName.Text = null;
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
        txtStateId.Text = row.Cells[1].Text;
        txtStateName.Text = row.Cells[2].Text;
    }
}