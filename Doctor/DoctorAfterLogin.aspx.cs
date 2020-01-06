using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DoctorAfterLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "Welcome :";
        if (Session["doctor"] == null)
        {
            Response.Redirect("~/LoginPage.aspx/");
        }
        else 
        {
            Label2.Text = Session["doctor"].ToString();
        }
        
    }
}