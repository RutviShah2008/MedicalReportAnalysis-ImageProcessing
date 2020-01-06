using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class FileUpload : System.Web.UI.Page
{
    Class1 obj = new Class1();
    int x;
    protected void Page_Load(object sender, EventArgs e)
    {
        txtFileUploadId.Enabled = false;
        errlbl17.Visible = false;
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        SqlParameter FileUploadId = new SqlParameter("@FileUploadId", txtFileUploadId.Text);
        SqlParameter UserId = new SqlParameter("@UserId", ddlUserId.Text);
        SqlParameter FileTypeId = new SqlParameter("@FileTypeId", ddlFileTypeId.Text);
        SqlParameter FileName = new SqlParameter("@FileName", txtFileName.Text);
        SqlParameter FileLocation = new SqlParameter("@FileLocation", txtFileLocation.Text);
        SqlParameter FileSize = new SqlParameter("@FileSize", txtFileSize.Text);



        SqlParameter[] pdata = new SqlParameter[6] { FileUploadId,UserId,FileTypeId,FileName,FileLocation,FileSize};
        x = obj.insert("FileUploadUpdateSp", pdata);//class method

        if (x != 0)
        {
            errlbl17.Visible = true;
            errlbl17.Text = "Successfully Updated";
            GridView1.DataBind();
            txtFileUploadId.Text = null;
            ddlUserId.Text = null;
            ddlFileTypeId.Text = null;
            txtFileName.Text = null;
            txtFileLocation.Text = null;
        }
        else
        {
            errlbl17.Visible = true;
            errlbl17.Text = "Invalid INfo";
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow row;
        row = GridView1.SelectedRow;
        txtFileUploadId.Text = row.Cells[1].Text;
        ddlUserId.Text = row.Cells[2].Text;
        ddlFileTypeId.Text = row.Cells[3].Text;
        txtFileName.Text = row.Cells[4].Text;
        txtFileLocation.Text = row.Cells[5].Text;
        txtFileSize.Text = row.Cells[6].Text;
    }
}