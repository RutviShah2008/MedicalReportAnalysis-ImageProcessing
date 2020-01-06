using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PatientAfterLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "Welcome :";
        Label2.Text=Session["patient"].ToString();
        //Response.Redirect("~/Patient/Test1.aspx");
    }
}