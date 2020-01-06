using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class ConversionTranslation : System.Web.UI.Page
{
    Class1 obj = new Class1();
    int x;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label8.Text = obj.userselect("select userid from registrationmst where username='" + Session["un"].ToString() + "'").ToString();
        errlbl.Visible = false;

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SqlParameter ColumnName = new SqlParameter("@ColumnName",txtColumnName.Text);
        SqlParameter ColumnData = new SqlParameter("@ColumnData", txtColumnData.Text);
        SqlParameter PositiveFlag = new SqlParameter("@PositiveFlag", txtPositiveFlag.Text);
        SqlParameter AlertId = new SqlParameter("@AlertId", txtAlertId.Text);
        SqlParameter ConversionId = new SqlParameter("@ConversionId", txtConversionId.Text);
        SqlParameter Reason = new SqlParameter("@Reason", txtReason.Text);
       
        SqlParameter[] pdata = new SqlParameter[6] {ColumnName,ColumnData,PositiveFlag,AlertId,ConversionId,Reason };
        x = obj.insert("ConversionTranslationInsertSp", pdata);//class method
        

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