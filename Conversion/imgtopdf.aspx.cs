using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Imaging;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
public partial class Conversion_imgtopdf : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button4_Click(object sender, EventArgs e)
    {

        string path = Server.MapPath(FileUpload1.FileName);
        using (var ms = new MemoryStream())
        {
            //marging top left right bottom
            var document = new iTextSharp.text.Document(iTextSharp.text.PageSize.LETTER.Rotate(), 0, 0, 0, 0);

            iTextSharp.text.pdf.PdfWriter.GetInstance(document, ms).SetFullCompression();
            document.Open();

            var imgStream = GetImageStream(path);
            var image = iTextSharp.text.Image.GetInstance(imgStream);
            image.ScaleToFit(document.PageSize.Width, document.PageSize.Height);
            document.Add(image);
            document.Close();
            File.WriteAllBytes("f:/PDFFolder/" + TextBox1.Text + ".PDF", ms.ToArray());
        }      
    }
    private Stream GetImageStream(string imagePath)
    {
        var ms = new MemoryStream();
        using (var img = System.Drawing.Image.FromFile(imagePath))
        {
            var jpegCodec = ImageCodecInfo.GetImageEncoders()
                .Where(x => x.MimeType == "image/jpeg")
                .FirstOrDefault();

            var encoderParams = new EncoderParameters(1);
            encoderParams.Param[0] = new EncoderParameter(Encoder.Quality, (long)20);

            int dpi = 175;//dpi - dot per inch
            var thumb = img.GetThumbnailImage((int)(11 * dpi), (int)(8.5 * dpi), null, IntPtr.Zero);
            thumb.Save(ms, jpegCodec, encoderParams);
        }
        ms.Seek(0, SeekOrigin.Begin);//location point as start point
        return ms;
    }
}

//using iTextSharp.text;
//using iTextSharp.text.pdf;
//using System.Text;
//using iTextSharp.text.pdf.parser;
//using System.Drawing;
//using Bytescout.PDFExtractor;

//        iTextSharp.text.Rectangle pageSize = null;

////        Bitmap srcImage = new Bitmap(6614, 9685);
//      //  System.Drawing.Bitmap srcImage= new System.Drawing.Bitmap()

//        using (var srcImage = new Bitmap(FileUpload1.FileName))
//        {
////            srcImage.SetResolution(srcImage.Width, srcImage.Height); ;
//            pageSize = new iTextSharp.text.Rectangle(0, 0, srcImage.Width, srcImage.Height);
//        }
//        using (var ms = new MemoryStream())
//        {
//            var document = new iTextSharp.text.Document(pageSize, 0, 0, 0, 0);
//            iTextSharp.text.pdf.PdfWriter.GetInstance(document, ms).SetFullCompression();
//            document.Open();
//            var image = iTextSharp.text.Image.GetInstance(FileUpload1.FileName);
//            document.Add(image);
//            document.Close();

//            File.WriteAllBytes("f:/PDFFolder/" + TextBox1.Text + ".PDF", ms.ToArray());
//        }