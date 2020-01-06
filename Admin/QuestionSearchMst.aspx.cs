using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class QuestionMst : System.Web.UI.Page
{
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlParameter que = new SqlParameter("@QId", txtQId.Text);
        SqlParameter[] pdata = new SqlParameter[1] { que };
        DataSet ds = new DataSet();
        ds = obj.RetriveAll("QueDescSp", pdata);
        foreach (DataRow temp in ds.Tables[0].Rows)
        {
            txtQDesc.Text = temp["QDesc"].ToString();
        }
    }
}