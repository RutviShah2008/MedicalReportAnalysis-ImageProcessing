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
    //int x;
    protected void Page_Load(object sender, EventArgs e)
    {
       // Label5.Text = obj.userselect("select userid from registrationmst where username='"+Session["un"].ToString()+"'").ToString();
    }
    protected void txtConversionId_TextChanged(object sender, EventArgs e)
    {
        SqlParameter sid = new SqlParameter("@StateId",txtConversionId.Text);
        SqlParameter[] pdata = new SqlParameter[1] { sid };
        DataSet ds = new DataSet();
        ds = obj.RetriveAll("ConversionSearchSp", pdata);
        foreach (DataRow temp in ds.Tables[0].Rows)
        {
            txtFileUploadId.Text = temp["FileUploadId"].ToString();
            txtContent.Text = temp["Content"].ToString();
        }

    }
}