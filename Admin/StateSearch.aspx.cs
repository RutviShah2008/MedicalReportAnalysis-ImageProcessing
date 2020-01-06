using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class StateMst : System.Web.UI.Page
{
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void txtStateName_TextChanged(object sender, EventArgs e)
    {

    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        SqlParameter sid = new SqlParameter("@StateId", txtStateId.Text);
        SqlParameter[] pdata = new SqlParameter[1] { sid };
        DataSet ds = new DataSet();
        ds = obj.RetriveAll("StateSearchSp", pdata);
        foreach (DataRow temp in ds.Tables[0].Rows)
        {
            txtStateName.Text = temp["StateName"].ToString();
        }
    }
}