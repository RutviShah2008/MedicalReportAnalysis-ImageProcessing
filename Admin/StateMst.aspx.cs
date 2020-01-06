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
    int x;

    protected void Page_Load(object sender, EventArgs e)
    {
        if(!Page.IsPostBack)
        {
        SqlParameter sid = new SqlParameter("@StateId", SqlDbType.Int);
        txtStateId.Text = obj.max("MaxStateId", sid).ToString();
        errlbl.Visible = false;
        Label3.Visible = false;
        }
    }
    protected void txtStateName_TextChanged(object sender, EventArgs e)
    {
        SqlParameter sname = new SqlParameter("@StateName", txtStateName.Text);
        SqlParameter[] pdata = new SqlParameter[1] { sname };
        x = obj.check("StateNameSp", pdata);//class method

        if (x != 0)
        {
            Label3.Visible = true;
            txtStateName.Text = null;
            txtStateName.Focus();
        }

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SqlParameter sid = new SqlParameter("@StateId", txtStateId.Text);
        SqlParameter sname = new SqlParameter("@StateName", txtStateName.Text);
        SqlParameter[] pdata = new SqlParameter[2] { sid, sname };
        x = obj.insert("StateInsertSP", pdata);//class method


        if (x != 0)
        {
            errlbl.Visible = true;
            errlbl.Text = "Successfully Inserted";
            //txtStateName.Text = null;
            Response.Redirect("StateMst.aspx");
        }
        else
        {
            errlbl.Visible = true;
            errlbl.Text = "Invalid INfo";
        }
    }
}