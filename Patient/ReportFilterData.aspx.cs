using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net;
using System.Net.Mail;


public partial class Patient_ReportFilterData : System.Web.UI.Page
{
    Class1 obj = new Class1();
    DataTable dt = new DataTable();
    DataRow dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = Session["patient"].ToString();

        if (!Page.IsPostBack)
        {
            //dt.Columns.Add("ReportType");
            dt.Columns.Add("TestParameter");
            dt.Columns.Add("Minvalue");
            dt.Columns.Add("Maxvalue");
            dt.Columns.Add("Fminvalue");
            dt.Columns.Add("Fmaxvalue");
            dt.Columns.Add("Result");
            dt.Columns.Add("Opinion");

            Session["NewReportData"] = dt;
            Griddata();
        }

        Label1.Visible = false;
        int flag = 0;

        DataSet ds = new DataSet();
        ds = obj.Fetch("ReportDataSp");
        foreach (DataRow temp in ds.Tables[0].Rows)
        {
            if ((string.Compare(temp["Result"].ToString(), temp["Minvalue"].ToString()) < 0) || (string.Compare(temp["Result"].ToString(), temp["Maxvalue"].ToString()) > 0))
            {
                Label1.Visible = true;
                Label1.Text = "Out of range";

            }
            else
            {

                Label1.Visible = true;
                Label1.Text = "In range";
            }


            dt = (DataTable)Session["NewReportData"];
            dr = dt.NewRow();
            //dr["ReportType"] = temp["ReportType"].ToString();
            dr["TestParameter"] = temp["TestParameter"].ToString();
            dr["Minvalue"] = temp["Minvalue"].ToString();
            dr["Maxvalue"] = temp["Maxvalue"].ToString();
            dr["Fminvalue"] = temp["Fminvalue"].ToString();
            dr["Fmaxvalue"] = temp["Fmaxvalue"].ToString();
            dr["Result"] = temp["Result"].ToString();
            dr["Opinion"] = Label1.Text;

            dt.Rows.Add(dr);
            Session.Remove("NewReportData");
            Session["NewReportData"] = dt;
            Griddata();
        }

        //int x = obj.delete("delete from ReportData");
    }
    void Griddata()
    {
        GridView1.DataSource = (DataTable)Session["NewReportData"];
        GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
    }
    
    protected void Button2_Click(object sender, EventArgs e)
    {
        //string name1 = Session["mailid"].ToString();
        //var q1 = obj.userselect("select EmailId from RegistrationMst where name='" + name1.ToString() + "'").ToString();
        //string pname = Session["patient"].ToString();
        //MailMessage mail = new MailMessage();
        //SmtpClient smtp = new SmtpClient()
        //{
        //    Host = "smtp.gmail.com",
        //    Port = 587,
        //    DeliveryMethod = SmtpDeliveryMethod.Network,
        //    //UseDefaultCredentials = true,
        //    Credentials = new NetworkCredential("mraip1234@gmail.com", "mraip12345"),
        //    EnableSsl = true
        //};
        //MailAddress esender = new MailAddress("mraip1234@gmail.com");
        //mail.From = esender;
        //MailAddress erec = new MailAddress(q1.ToString());
        //mail.To.Add(erec);

        //mail.Body = "'" + pname.ToString() + "' has reffered you. You can review by logging into the website. '";
        //mail.Subject = "Review Request";
        //smtp.Send(mail);
        //Response.Redirect("~/Login.aspx");
        

    }
    //protected void Button2_Click1(object sender, EventArgs e)
    //{

    //}
    protected void Button2_Click1(object sender, EventArgs e)
    {
        string name1 = Session["mailid"].ToString();
        var q1 = obj.userselect("select EmailId from RegistrationMst where name='" + name1.ToString() + "'").ToString();
        string pname = Session["patient"].ToString();
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
        MailAddress erec = new MailAddress(q1.ToString());
        mail.To.Add(erec);

        mail.Body = "'" + pname.ToString() + "' has reffered you. You can review by logging into the website. '";
        mail.Subject = "Review Request";
        smtp.Send(mail);
        //Response.Redirect("~/Login.aspx");
        
    }
}