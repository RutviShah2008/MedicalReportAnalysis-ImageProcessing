using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class City : System.Web.UI.Page
{
    Class1 obj = new Class1();
    int x;
    protected void Page_Load(object sender, EventArgs e)
    {
        txtCityId.Enabled = false;
        errlbl.Visible = false;
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SqlParameter cname = new SqlParameter("@CityName", txtCityName.Text);

        SqlParameter[] pdata = new SqlParameter[1] {cname};
        x = obj.insert("CityUpdateSp", pdata);//class method

        if (x != 0)
        {
            errlbl.Visible = true;
            errlbl.Text = "Successfully Inserted";
            GridView1.DataBind();
            txtCityId.Text = null;
            txtCityName.Text = null;
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
        txtCityId.Text = row.Cells[1].Text;
        txtCityName.Text = row.Cells[2].Text;
    }
}