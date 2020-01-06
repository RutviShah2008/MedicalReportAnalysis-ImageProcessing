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
        txtConversionId.Enabled = false;
        txtFileUploadId.Enabled = false;
        errlbl.Visible = false;
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        SqlParameter ConversionId= new SqlParameter("@ConversionID", txtConversionId.Text);
        SqlParameter FileUploadId= new SqlParameter("@FileUploadId", txtFileUploadId.Text);
        SqlParameter Content = new SqlParameter("@Content", txtContent.Text);


        SqlParameter[] pdata = new SqlParameter[3] { ConversionId,FileUploadId,Content };
        x = obj.insert("ConversionUpdateSp", pdata);//class method

        if (x != 0)
        {
            errlbl.Visible = true;
            errlbl.Text = "Successfully Updated";
            GridView1.DataBind();
            txtConversionId.Text = null;
            txtFileUploadId.Text = null;
            txtContent.Text = null;
        }
        else
        {
            errlbl.Visible = true;
            errlbl.Text = "Invalid INfo";
        }

    }
}