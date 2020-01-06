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
        SqlParameter FileUploadId = new SqlParameter("@FileUploadId", SqlDbType.Int);
        txtFileUploadId.Text = obj.max("MaxFileUploadId", FileUploadId).ToString();
        txtFileUploadId.Enabled = false;
        errlbl.Visible = false;
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SqlParameter FileUploadId = new SqlParameter("@FileUploadId", txtFileUploadId.Text);
        SqlParameter UserId = new SqlParameter("@UserId", ddlUserId.Text);
        SqlParameter FileTypeId = new SqlParameter("@FileTypeId", ddlFileTypeId.Text);
        SqlParameter FileName = new SqlParameter("@FileName", txtFileName.Text);
        SqlParameter FileLocation = new SqlParameter("@FileLocation", txtFileLocation.Text);
        SqlParameter FileSize = new SqlParameter("@FileSize", txtFileSize.Text);
        //SqlParameter sid = new SqlParameter("@StateId", ddlStateId.SelectedValue);

        SqlParameter[] pdata = new SqlParameter[6] { FileUploadId, UserId, FileTypeId, FileName, FileLocation, FileSize };
        x = obj.insert("FileUploadInsertSp", pdata);//class method


        if (x != 0)
        {
            errlbl.Visible = true;
            errlbl.Text = "Successfully Inserted";
            txtFileName.Text = null;
            txtFileLocation.Text = null;
            txtFileSize.Text = null;
            //txtCityName.Text = null;
           // Response.Redirect("FileUpload.aspx");

        }
        else
        {
            errlbl.Visible = true;
            errlbl.Text = "Invalid INfo";
        }
    }
}