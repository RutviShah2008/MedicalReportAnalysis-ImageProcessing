using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class FileTypeMst : System.Web.UI.Page
{
    Class1 obj = new Class1();
    int x;
    protected void Page_Load(object sender, EventArgs e)
    {
        txtFileTypeId.Enabled = false;
        errlbl.Visible = false;
       
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SqlParameter FileTypeId = new SqlParameter("@FileTypeId", txtFileTypeId.Text);
        SqlParameter FileTypeName = new SqlParameter("@FileTypeName", txtFileTypeName.Text);
        SqlParameter[] pdata = new SqlParameter[2] { FileTypeId, FileTypeName };
        x = obj.insert("FileTypeUpdateSp", pdata);//class method

        if (x != 0)
        {
            errlbl.Visible = true;
            errlbl.Text = "Successfully Updated";
            GridView1.DataBind();
            txtFileTypeId.Text = null;
            txtFileTypeName.Text = null;
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
        txtFileTypeId.Text = row.Cells[1].Text;
        txtFileTypeName.Text = row.Cells[2].Text;
    }
}