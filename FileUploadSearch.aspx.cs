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
    protected void Page_Load(object sender, EventArgs e)
    {

    }
  /*  protected void txtFileUploadId_TextChanged(object sender, EventArgs e)
    {
       
    }*/
   /* protected void ddlUserId_SelectedIndexChanged(object sender, EventArgs e)
    {

    }*/
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlParameter FileUploadId = new SqlParameter("@FileUploadId", txtFileUploadId.Text);
        SqlParameter[] pdata = new SqlParameter[1] { FileUploadId };
        DataSet ds = new DataSet();
        ds = obj.RetriveAll("FileUploadSearchSp", pdata);
        foreach (DataRow temp in ds.Tables[0].Rows)
        {
            ddlUserId.Text = temp["UserId"].ToString();
            ddlFileTypeId.Text = temp["FileTypeId"].ToString();
            txtFileName.Text = temp["FileName"].ToString();
            txtFileLocation.Text = temp["FileLocation"].ToString();
            txtFileSize.Text = temp["Size"].ToString();
        }
    }
}