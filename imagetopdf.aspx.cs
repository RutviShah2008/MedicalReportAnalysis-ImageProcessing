using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
 
using iTextSharp.text;
using iTextSharp.text.pdf;
using System.Text;
using iTextSharp.text.pdf.parser;
using System.IO;
using System.Configuration;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Data;
public partial class Default2 : System.Web.UI.Page
{

     
    protected void Page_Load(object sender, EventArgs e)
    {
        Document document = new Document();
        using (var stream = new FileStream("f:/t3.PDF", FileMode.Create, FileAccess.Write, FileShare.None))
        {
            PdfWriter.GetInstance(document, stream);
            document.Open();
            using (var imageStream = new FileStream("f:/uro5.jpg", FileMode.Open, FileAccess.Read, FileShare.ReadWrite))
            {
                 var image =  Image.GetInstance(imageStream);
 
                document.Add(image);
            }
            document.Close();
       }


        

    }
 
}