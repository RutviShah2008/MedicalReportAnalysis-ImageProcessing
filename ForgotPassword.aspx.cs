using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net.Mail;
using System.Net;
public partial class ForgotPassword : System.Web.UI.Page
{
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        //Label5.Text = obj.userselect("select userid from registrationmst where username='" + Session["un"].ToString() + "'").ToString();
        errlbl.Visible = false;
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        int flag = 0;
        DataSet ds = new DataSet();
        ds = obj.Fetch("FPSP");
        foreach(DataRow temp in ds.Tables[0].Rows)
        {
            if(string.Compare(temp["UserName"].ToString(), txtUsername.Text)==0)
            {
                if (string.Compare(temp["QuestionId"].ToString(), ddlQuestion.SelectedValue) == 0)
                {
                    if (string.Compare(temp["Answer"].ToString(), txtAnswer.Text) == 0)
                    {
                        flag = 1;
                        errlbl.Visible = true;
                        //errlbl.Text = "Your Password is :  " +  temp["password"].ToString();
                        MailMessage mail = new MailMessage();
                        SmtpClient smtp = new SmtpClient()
                        {
                            Host = "smtp.gmail.com",
                            Port = 587,
                            DeliveryMethod = SmtpDeliveryMethod.Network,
                            //UseDefaultCredentials = true,
                            Credentials = new NetworkCredential("mraip1234@gmail.com", "mraip12345"),
                            EnableSsl = true
                        };
                        MailAddress esender = new MailAddress("mraip1234@gmail.com");
                        mail.From = esender;
                        MailAddress erec = new MailAddress(temp["emailid"].ToString());
                        mail.To.Add(erec);

                        mail.Body = "Your Password For Username '" + txtUsername.Text + "' is '" + temp["password"].ToString() + "'";
                        mail.Subject = "ForGot Password";
                        smtp.Send(mail);
                        Response.Redirect("~/Login.aspx");


                    }
                }
            }
        }
        if(flag==0)
        {
            errlbl.Visible = true;
            errlbl.Text = "Invalid Info";
        }
    }
}
