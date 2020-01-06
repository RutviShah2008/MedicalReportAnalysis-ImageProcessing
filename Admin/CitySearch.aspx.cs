using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class City : System.Web.UI.Page
{
    Class1 obj = new Class1();
    //int x;
    protected void Page_Load(object sender, EventArgs e)
    {
        errrlbl.Visible = false;
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SqlParameter cid = new SqlParameter("@CityId", txtCityId.Text);
        SqlParameter[] pdata = new SqlParameter[1] { cid };
        DataSet ds = new DataSet();
        ds = obj.RetriveAll("CitySearchSp", pdata);
        foreach (DataRow temp in ds.Tables[0].Rows)
        {
            txtCityName.Text = temp["CityName"].ToString();
            txtStateId.Text = temp["StateID"].ToString();
        }
    }
}