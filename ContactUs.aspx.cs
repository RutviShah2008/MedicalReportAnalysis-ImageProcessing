using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class ContactUs : System.Web.UI.Page
{
    Class1 obj = new Class1();
    int x;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SqlParameter ContactName = new SqlParameter("@ContactName", txtContactName.Text);
        SqlParameter Email = new SqlParameter("@Email", txtEmailAddress.Text);
        SqlParameter Phone = new SqlParameter("@Phone", txtPhone.Text);
        SqlParameter Subject = new SqlParameter("@Subject", txtSubject.Text);
        SqlParameter Message = new SqlParameter("@Message", txtMessage.Text);
        SqlParameter[] pdata = new SqlParameter[5] { ContactName, Email,Phone,Subject,Message };
        x = obj.insert("ContactUsSp", pdata);//class method
    }
}