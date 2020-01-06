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
    int x;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if(!Page.IsPostBack)
        { 
        SqlParameter cid = new SqlParameter("@CityId", SqlDbType.Int);
        txtCityId.Text = obj.max("MaxCityId", cid).ToString();
        Label5.Visible = false;
        errlbl.Visible = false;        
        Label6.Visible = false;
        ddlStateId.DataBind();
        ddlStateId.Items.Insert(0, new ListItem("Select State", string.Empty));
        }

        
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (string.Compare(ddlStateId.SelectedItem.Text, "Select State") == 0)
        {
            ddlStateId.Focus();
            Label6.Visible = true;
            Label6.Text = "Please Select State";
        }
        else
        {
            SqlParameter cid = new SqlParameter("@CityId", txtCityId.Text);
            SqlParameter cname = new SqlParameter("@CityName", txtCityName.Text);
            SqlParameter sid = new SqlParameter("@StateId", ddlStateId.SelectedValue);

            SqlParameter[] pdata = new SqlParameter[3] { cid, cname, sid };
            x = obj.insert("CityInsertSp", pdata);//class method
            txtCityName.Text = null;

            if (x != 0)
            {
                errlbl.Visible = true;
                errlbl.Text = "Successfully Inserted";
                //txtCityName.Text = null;
                Response.Redirect("City.aspx");
            }
            else
            {
                errlbl.Visible = true;
                errlbl.Text = "Invalid INfo";
            }
        }
    }
    protected void txtCityName_TextChanged(object sender, EventArgs e)
    {
        SqlParameter cname = new SqlParameter("@CityName", txtCityName.Text);
        SqlParameter[] pdata = new SqlParameter[1] { cname };
        x = obj.check("CityNameSp", pdata);//class method

        if (x != 0)
        {
            Label5.Visible = true;
            txtCityName.Text = null;
            txtCityName.Focus();
        }
    }
    protected void ddlStateId_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}