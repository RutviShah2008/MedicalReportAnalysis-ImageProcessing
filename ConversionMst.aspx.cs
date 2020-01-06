using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class ConversionMst : System.Web.UI.Page
{
    Class1 obj = new Class1();
    int x;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label5.Text = obj.userselect("select userid from registrationmst where username='" + Session["un"].ToString() + "'").ToString();
        SqlParameter sid = new SqlParameter("@ConversionId", SqlDbType.Int);
        txtConversionId.Text = obj.max("MaxConversionId", sid).ToString();
        errlbl.Visible = false;

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SqlParameter ConversionId = new SqlParameter("@ConversionId", txtConversionId.Text);
        SqlParameter FileuploadId = new SqlParameter("@FileUplaodId", ddlFileUploadId.Text);
        SqlParameter Content = new SqlParameter("@Content", txtContent.Text);
        SqlParameter[] pdata = new SqlParameter[3] { ConversionId,FileuploadId, Content };
        x = obj.insert("ConversionMstInsertSp", pdata);//class method


        if (x != 0)
        {
            errlbl.Visible = true;
            errlbl.Text = "Successfully Inserted";
        }
        else
        {
            errlbl.Visible = true;
            errlbl.Text = "Invalid INfo";
        }
    }
}