using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net;
using System.Net.Mail;

using System.Text;
using System.Configuration; 
using System.Data.SqlClient;  
using System.IO;
using System.Web;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;  


public partial class Patient_ReportFilterData : System.Web.UI.Page
{
    Class1 obj = new Class1();
    DataTable dt = new DataTable();
    DataRow dr;

    private SqlConnection con;
    private SqlCommand com;
    private string constr, query;
    private void connection()
    {
        constr = ConfigurationManager.ConnectionStrings["getconn"].ToString();
        con = new SqlConnection(constr);
        con.Open();

    }  
    protected void Page_Load(object sender, EventArgs e)
    {
        Label3.Visible = false;
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
                Label1.Visible = false;
                Label1.Text = "Out of range";
            }
            else
            {

                Label1.Visible = false;
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

        int x = obj.delete("delete from ReportData");
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
        var q2 = obj.userselect("select EmailId from RegistrationMst where name='" + pname.ToString() + "'").ToString();
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
        mail.Body = "Hello, " + pname.ToString() + "  has reffered you."+"   You can reply on "+q2.ToString()+"    Report will be sent to you shortly in next mail";
        mail.Subject = "Review Request";
        smtp.Send(mail);
        //Response.Redirect("~/Login.aspx");
        Label3.Visible = true;
        Label3.Text = "Your request has been sent successfully ...";

        SendEmail();
        
    }
    protected void SendEmail()
    {
        MailMessage mail = new MailMessage();
        string name1 = Session["mailid"].ToString();
        var q1 = obj.userselect("select EmailId from RegistrationMst where name='" + name1.ToString() + "'").ToString();

        using (StringWriter sw = new StringWriter())
        {
            using (HtmlTextWriter hw = new HtmlTextWriter(sw))
            {
                GridView1.RenderControl(hw);
                StringReader sr = new StringReader(sw.ToString());
                MailMessage mm = new MailMessage("mraip1234@gmail.com",q1 );
                mm.Subject = "Report Email";
                mm.Body = "Report:<hr />" + sw.ToString()+"<br/><br/>Thanks and Regards,<br/>MRAIP Team"; 
                mm.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.EnableSsl = true;
                System.Net.NetworkCredential NetworkCred = new System.Net.NetworkCredential();
                NetworkCred.UserName = "mraip1234@gmail.com";
                NetworkCred.Password = "mraip12345";
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = NetworkCred;
                smtp.Port = 587;
                smtp.Send(mm);
            }
        }
    }

   
    protected void btnExport_Click(object sender, EventArgs e)
    {
        ExportGridToPDF();  
    }
    private void ExportGridToPDF()
    {

        Response.ContentType = "application/pdf";
        Response.AddHeader("content-disposition", "attachment;filename=Report.pdf");
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        StringWriter sw = new StringWriter();
        HtmlTextWriter hw = new HtmlTextWriter(sw);
        GridView1.RenderControl(hw);
        StringReader sr = new StringReader(sw.ToString());
        Document pdfDoc = new Document(PageSize.A3, 0f, 0f, 0f, 0f);
        HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
        PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
        pdfDoc.Open();
        htmlparser.Parse(sr);
        pdfDoc.Close();
        Response.Write(pdfDoc);
        Response.End();
        GridView1.AllowPaging = true;
        GridView1.DataBind();
    }
    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Confirms that an HtmlForm control is rendered for the specified ASP.NET
           server control at run time. */
    }
}