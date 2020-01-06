using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class FileTypeMst : System.Web.UI.Page
{
    Class1 obj = new Class1();
    int x;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlParameter FileTypeId = new SqlParameter("@FileTypeId", SqlDbType.Int);
            txtFileTypeId.Text = obj.max("MaxFileTypeId", FileTypeId).ToString();
            errlbl.Visible = false;
            Label3.Visible = false;
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SqlParameter FileTypeID = new SqlParameter("@FileTypeId", txtFileTypeId.Text);
        SqlParameter FileTypeName = new SqlParameter("@FileTypeName", txtFileTypeName.Text);
        SqlParameter[] pdata = new SqlParameter[2] { FileTypeID, FileTypeName };
        x = obj.insert("FileTypeInsertSp", pdata);//class method


        if (x != 0)
        {
            errlbl.Visible = true;
            errlbl.Text = "Successfully Inserted";
            txtFileTypeName.Text = null;
            
     
        }
        else
        {
            errlbl.Visible = true;
            errlbl.Text = "Invalid INfo";
        }
     }
    /*protected void txtFileTypeName_TextChanged(object sender, EventArgs e)
    {
    }*/
}