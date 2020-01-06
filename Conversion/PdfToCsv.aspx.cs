using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using iTextSharp.text;
using iTextSharp.text.pdf;
using System.Text;
using iTextSharp.text.pdf.parser;
using System.IO;
using System.Configuration;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Drawing;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Document document = new Document();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        // Session["mailid"] = DropDownList1.SelectedValue.ToString();
        if (this.PdfFileUpload1.HasFile)
        {
            string file = System.IO.Path.GetFullPath(PdfFileUpload1.PostedFile.FileName);
            string path = "~/file/" + PdfFileUpload1.FileName;
            PdfFileUpload1.SaveAs(Server.MapPath(path));
            this.ExportPDFToExcel(path);
        }
        //        Response.Redirect("/Patient/ReportFilterData.aspx");
    }
    private void ExportPDFToExcel(string path)
    {
        StringBuilder text = new StringBuilder();
        string path1 = path;
        PdfReader pdfReader = new PdfReader(Server.MapPath(path));
        for (int page = 1; page <= pdfReader.NumberOfPages; page++)
        {
            ITextExtractionStrategy strategy = new LocationTextExtractionStrategy();
            string currentText = PdfTextExtractor.GetTextFromPage(pdfReader, page, strategy);
            currentText = Encoding.UTF8.GetString(Encoding.Convert(Encoding.Default, Encoding.UTF8, Encoding.UTF8.GetBytes(currentText)));
            text.Append(currentText);
            pdfReader.Close();
        }
        Response.Clear();
        Response.Buffer = true;
        Response.AddHeader("content-disposition", "attachment;filename=" + txtFileName.Text + ".csv");
        Response.Charset = "";
        Response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
        Response.Write(text);
        Response.Flush();
        Response.End();
    }


}






//using (var stream = new FileStream("f:/test.pdf", FileMode.Create, FileAccess.Write, FileShare.None))
//{
//    PdfWriter.GetInstance(document, stream);
//    document.Open();
//    using (var imageStream = new FileStream("f:/a1.jpg", FileMode.Open, FileAccess.Read, FileShare.ReadWrite))
//    {
//        var image = Image.GetInstance(imageStream);
//        document.Add(image);
//    }
//    document.Close();

//==================================================================

//        if (!Page.IsPostBack)
//       {
//         txtPatientName.Enabled = false;
//       txtPatientName.Text = Session["patient"].ToString();
//errlbl.Visible = false;
// }


//===================================================================

//        string FileName = System.IO.Path.GetFileName(txtFileName.Text + ".csv");
//       string Extension = System.IO.Path.GetExtension(FileName);
//       string FolderPath = "G:\\FINALYEARPROJECT\\FinalMRAIP1\\";

//       string FilePath = Server.MapPath(FolderPath + FileName);
//       PdfFileUpload1.SaveAs(FilePath);

//        Import_To_Grid(FilePath, Extension, "Yes");

//====================================================================

//private void Import_To_Grid(string FilePath, string Extension, string isHDR)
//{
//    /*
//    string conStr = string.Empty;// = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\\Users\\shah\\Desktop\\temp.xlsx; Extended Properties='Excel 8.0 Xml;HDR=YES'";
//    switch (Extension)
//    {
//        case ".xls": //Excel 97-03
//            conStr = ConfigurationManager.ConnectionStrings["Excel03ConString"]
//                     .ConnectionString;
//            break;
//        case ".xlsx": //Excel 07
//            conStr = ConfigurationManager.ConnectionStrings["Excel07ConString"]
//                      .ConnectionString;
//            break;
//    }
//    conStr = String.Format(conStr, FilePath, isHDR);
//    OleDbConnection connExcel = new OleDbConnection(conStr);
//    OleDbCommand cmdExcel = new OleDbCommand();
//    OleDbDataAdapter oda = new OleDbDataAdapter();
//    DataTable dt = new DataTable();
//    cmdExcel.Connection = connExcel;

//    //Get the name of First Sheet
//    connExcel.Open();
//    DataTable dtExcelSchema;
//    dtExcelSchema = connExcel.GetOleDbSchemaTable(OleDbSchemaGuid.Tables, null);
//    string SheetName = dtExcelSchema.Rows[0]["TABLE_NAME"].ToString();
//    connExcel.Close();

//    //Read Data from First Sheet
//    connExcel.Open();
//    cmdExcel.CommandText = "SELECT * From [" + SheetName + "]";
//    oda.SelectCommand = cmdExcel;
//    oda.Fill(dt);
//    connExcel.Close();


//    //foreach(DataRow temp in dt.Rows)
//    //{
//    //    Label15.Text = temp.ToString();
//    //}

//    //string st="";

//    using (SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True"))
//    {
//        for (int i = 0; i < dt.Rows.Count; i++)
//        {
//            SqlCommand cmd = new SqlCommand("Insert Into ReportData values(" + dt.Rows[i][0] + ",'" + dt.Rows[i][1] + "','" + dt.Rows[i][2] + "','" + dt.Rows[i][3] + "','" + dt.Rows[i][4] + "','" + dt.Rows[i][5] + "','" + dt.Rows[i][6] + "','" + dt.Rows[i][7] + "')", con);
//            con.Open();
//            cmd.ExecuteNonQuery();
//            con.Close();
//        }
//    }*/
//}










