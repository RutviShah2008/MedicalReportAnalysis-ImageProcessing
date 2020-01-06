using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using System.Web.Script.Services;
public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    [WebMethod(EnableSession = true)]
    [ScriptMethod]
    public static string HelloWorld(string name)
    {
        if (HttpContext.Current.Session[name] != null)
        {
            return "false";
        }
        return "true";
    }
}