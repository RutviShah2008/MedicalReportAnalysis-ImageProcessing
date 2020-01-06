using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class AlertMst : System.Web.UI.Page
{
    Class1 obj = new Class1();
    int x;
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlParameter AlertId = new SqlParameter("@AlertId", SqlDbType.Int);
        txtAlertId.Text = obj.max("MaxAlertId", AlertId).ToString();
        errlbl.Visible=false;
        Label4.Visible = false;
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SqlParameter AlertId = new SqlParameter("@AlertId",txtAlertId.Text);
        SqlParameter AlertMsg = new SqlParameter("@AlertMsg", txtAlertMsg.Text);
        //SqlParameter sid = new SqlParameter("@StateId", ddlStateId.SelectedValue);

        SqlParameter[] pdata = new SqlParameter[2] { AlertId, AlertMsg};
        x = obj.insert("AlertInsertSp", pdata);//class method
        

        if (x != 0)
        {
            errlbl.Visible = true;
            errlbl.Text = "Successfully Inserted";
            //txtCityName.Text = null;
            Response.Redirect("AlertMst.aspx");
            
        }
        else
        {
            errlbl.Visible = true;
            errlbl.Text = "Invalid INfo";
        }

    }
    protected void txtAlertMsg_TextChanged(object sender, EventArgs e)
    {
        SqlParameter AlertMsg = new SqlParameter("@AlertMsg", txtAlertMsg.Text);
        SqlParameter[] pdata = new SqlParameter[1] { AlertMsg };
        x = obj.check("AlertMsgSp", pdata);//class method

        if (x != 0)
        {
            Label4.Visible = true;
            txtAlertMsg.Text = null;
            txtAlertMsg.Focus();
        }
        else
        {
            Label4.Visible = false;
        }
    }
}
