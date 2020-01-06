using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class AlertUpdate : System.Web.UI.Page
{
    Class1 obj = new Class1();
    int x;
    protected void Page_Load(object sender, EventArgs e)
    {
        txtAlertId.Enabled = false;
        errlbl.Visible = false;
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SqlParameter AlertId = new SqlParameter("@AlertId", txtAlertId.Text);
        SqlParameter AlertMsg = new SqlParameter("@AlertMsg", txtAlertMsg.Text);
       
        SqlParameter[] pdata = new SqlParameter[2] { AlertId, AlertMsg };
        x = obj.insert("AlertUpdateSp", pdata);//class method

        if (x != 0)
        {
            errlbl.Visible = true;
            errlbl.Text = "Successfully Updated";
            GridView1.DataBind();
            txtAlertId.Text = null;
            txtAlertMsg.Text = null;
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
        txtAlertId.Text = row.Cells[1].Text;
        txtAlertMsg.Text = row.Cells[2].Text;
    }
}