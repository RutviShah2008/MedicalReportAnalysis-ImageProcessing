using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MODI;
using System.Drawing.Imaging;
using System.Drawing;
using System.IO;
using System.Drawing.Design;
using System.Runtime.InteropServices;
using System.Data;
using System.Data.SqlClient;
public partial class Test1 : System.Web.UI.Page
{
    int x;
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        txtuid.Text = obj.userselect("select userid from registrationmst where username='" + Session["patient"] + "'").ToString();
        txtuid.Enabled = false;
    }
    protected void btnUpload_Click(object sender, EventArgs e)
    {
        string filePath = Server.MapPath("~/tem/" + Path.GetFileName(FileUpload1.PostedFile.FileName));
        FileUpload1.SaveAs(filePath);
        string ExtractText = this.ExtractTextFromImage(filePath);
        data.Text = ExtractText.Replace(Environment.NewLine, "<br/>");
        data.Visible = true;
        string todaysdate = DateTime.Now.ToShortDateString().ToString();
        string filename = FileUpload1.FileName;
        string type = "jpg";
        int size = 1000;

        SqlParameter tdate = new SqlParameter("@FileUploadDate",Convert.ToDateTime( todaysdate));
        SqlParameter uid = new SqlParameter("@UserId", txtuid.Text);
        SqlParameter fname = new SqlParameter("@FileName", filename);
        SqlParameter filetype = new SqlParameter("@FileType", type);
        SqlParameter fileSize = new SqlParameter("@FileSize", size);
        SqlParameter Content = new SqlParameter("@Content", data.Text);
        SqlParameter[] pdata = new SqlParameter[6] { tdate,uid, fname,filetype,fileSize, Content };
        x = obj.insert("FileUploadInsertSp", pdata);//class method       

    }
    private string ExtractTextFromImage(string filePath)
    {
        Document modiDocument = new Document();
        modiDocument.Create(filePath);
        modiDocument.OCR(MiLANGUAGES.miLANG_ENGLISH);
        MODI.Image modiImage = (modiDocument.Images[0] as MODI.Image);
        string extractedText = modiImage.Layout.Text;
        modiDocument.Close();
        return extractedText;
    }
}