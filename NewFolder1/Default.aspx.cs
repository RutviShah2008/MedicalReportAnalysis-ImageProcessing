using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
//using System.Web.UI.WebControls;
using System.IO;
 
using iTextSharp.text;
using iTextSharp.text.pdf;
using System.Text;
using iTextSharp.text.pdf.parser;

//http://www.aspforums.net/Threads/180443/Convert-a-PDF-File-to-Excel-File-using-iTextSharp-using-C-Net/
public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Document document = new Document();
        using (var stream = new FileStream("f:/test.pdf", FileMode.Create, FileAccess.Write, FileShare.None))
        {
            PdfWriter.GetInstance(document, stream);
            document.Open();
            using (var imageStream = new FileStream("f:/a.jpg", FileMode.Open, FileAccess.Read, FileShare.ReadWrite))
            {
                var image = Image.GetInstance(imageStream);
                document.Add(image);
            }
            document.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (this.FileUpload1.HasFile)
        {
            string file = System.IO.Path.GetFullPath(FileUpload1.PostedFile.FileName);
            this.ExportPDFToExcel(file);
        }
    }

    private void ExportPDFToExcel(string fileName)
    {
        StringBuilder text = new StringBuilder();
        PdfReader pdfReader = new PdfReader(fileName);
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
        Response.AddHeader("content-disposition", "attachment;filename=ReceiptExport.xls");
        Response.Charset = "";
        Response.ContentType = "application/vnd.ms-excel";
        Response.Write(text);
        Response.Flush();
        Response.End();
    }
}