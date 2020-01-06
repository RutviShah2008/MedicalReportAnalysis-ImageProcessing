using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
           string exampleString = Label1.Text;
         string[] words = exampleString.Split(' ');
        foreach (string word in words)
        {
            Label2.Text = word.ToString();
        }
    }
}