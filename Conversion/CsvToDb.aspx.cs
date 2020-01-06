using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.IO;
public partial class Default2 : System.Web.UI.Page
{
    SqlConnection con;
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["FinalConnection"].ConnectionString);
        con.Open();
        if (Session["patient"] == null)
        {
            Response.Redirect("~/LoginPage.aspx");
        }
        else
        {
            txtPatientName.Text = Session["patient"].ToString();
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string fileName = FileUpload1.FileName;
        string sourcePath = @"C:\Users\shah\Downloads";
        string targetPath = @"G:\new1\finalbackup\FinalMRAIP1\Conversion";

        // Use Path class to manipulate file and directory paths.
        string sourceFile = System.IO.Path.Combine(sourcePath, fileName);
        string destFile = System.IO.Path.Combine(targetPath, fileName);

        // To copy a folder's contents to a new location:
        // Create a new target folder, if necessary.
        if (!System.IO.Directory.Exists(targetPath))
        {
            System.IO.Directory.CreateDirectory(targetPath);
        }

        // To copy a file to another location and 
        // overwrite the destination file if it already exists.
        System.IO.File.Copy(sourceFile, destFile, true);


        DataTable tblcsv = new DataTable();
        //creating columns  
        tblcsv.Columns.Add("No");
        tblcsv.Columns.Add("TestParameter");
        tblcsv.Columns.Add("Minvalue");
        tblcsv.Columns.Add("Maxvalue");
        tblcsv.Columns.Add("Fminvalue");
        tblcsv.Columns.Add("Fmaxvalue");
        tblcsv.Columns.Add("Result");

        //getting full file path of Uploaded file  
        string CSVFilePath = Path.GetFullPath(Server.MapPath(FileUpload1.PostedFile.FileName));
        //Reading All text  
        string ReadCSV = File.ReadAllText(CSVFilePath);
        //spliting row after new line  
        foreach (string csvRow in ReadCSV.Split('\n'))
        {
            if (!string.IsNullOrEmpty(csvRow))
            {
                //Adding each row into datatable  
                tblcsv.Rows.Add();
                int count = 0;
                foreach (string FileRec in csvRow.Split(' '))
                {
                    tblcsv.Rows[tblcsv.Rows.Count - 1][count] = FileRec;
                    count++;
                }
            }
        }
        //Calling insert Functions  
        InsertCSVRecords(tblcsv);
        //txtPatientName.Text = "";
        //txtRefDocName.Text = "";
        //txtAge.Text = "";
        //txtReportType.Text = "";
        //RadioButtonList1.Text = "";
        // DataTable dt = new DataTable();
    }
    private void InsertCSVRecords(DataTable csvdt)
    {

        SqlBulkCopy objbulk = new SqlBulkCopy(con);
        objbulk.DestinationTableName = "ReportData";
        objbulk.ColumnMappings.Add("No", "No");
        objbulk.ColumnMappings.Add("TestParameter", "TestParameter");
        objbulk.ColumnMappings.Add("Minvalue", "Minvalue");
        objbulk.ColumnMappings.Add("Maxvalue", "Maxvalue");
        objbulk.ColumnMappings.Add("Fminvalue", "Fminvalue");
        objbulk.ColumnMappings.Add("Fmaxvalue", "Fmaxvalue");
        objbulk.ColumnMappings.Add("Result", "Result");

        objbulk.WriteToServer(csvdt);
        con.Close();

        Session["mailid"] = txtRefDocName.Text;

        //Session["patient"] = txtPatientName;

        int x = obj.delete("delete top(1) from ReportData");
        con.Open();

        SqlCommand cmd = new SqlCommand("Insert Into PatientInfo (PatientName,RefDocName,Age,Gender,ReportType) values('" + txtPatientName.Text + "','" + txtRefDocName.Text + "'," + txtAge.Text + ",'" + RadioButtonList1.SelectedValue + "','" + txtReportType.Text + "')", con);
        x = cmd.ExecuteNonQuery();
        if (x != 0)
        {

        }
    }
}

//===========================COMMENT==================================================
/*
SqlConnection con;  
  
    string sqlconn;  
    protected void Page_Load(object sender, EventArgs e)  
    {  
  
  
    }  
  
     
    private void connection()  
    {  
        sqlconn = ConfigurationManager.ConnectionStrings["SqlCom"].ConnectionString;  
        con = new SqlConnection(sqlconn);  
  
    }  
    
    protected void Button1_Click(object sender, EventArgs e)  
    {  
        //Creating object of datatable  
        DataTable tblcsv = new DataTable();  
        //creating columns  
        tblcsv.Columns.Add("Name");  
        tblcsv.Columns.Add("City");  
        tblcsv.Columns.Add("Address");  
        tblcsv.Columns.Add("Designation");  
         //getting full file path of Uploaded file  
        string CSVFilePath = Path.GetFullPath(FileUpload1.PostedFile.FileName);  
        //Reading All text  
        string ReadCSV = File.ReadAllText(CSVFilePath);  
        //spliting row after new line  
        foreach (string csvRow in ReadCSV.Split('\n'))  
        {  
            if (!string.IsNullOrEmpty(csvRow))  
            {  
                //Adding each row into datatable  
                tblcsv.Rows.Add();  
                int count = 0;  
                foreach (string FileRec in csvRow.Split(','))  
                {  
                    tblcsv.Rows[tblcsv.Rows.Count - 1][count] = FileRec;  
                    count++;  
                }  
            }  
             
            
        }  
        //Calling insert Functions  
        InsertCSVRecords(tblcsv);  
    }  
    //Function to Insert Records  
    private void InsertCSVRecords(DataTable csvdt)  
    {  
  
        connection();  
        //creating object of SqlBulkCopy    
        SqlBulkCopy objbulk = new SqlBulkCopy(con);  
        //assigning Destination table name    
        objbulk.DestinationTableName = "Employee";  
        //Mapping Table column    
        objbulk.ColumnMappings.Add("Name", "Name");  
        objbulk.ColumnMappings.Add("City", "City");  
        objbulk.ColumnMappings.Add("Address", "Address");  
        objbulk.ColumnMappings.Add("Designation", "Designation");  
        //inserting Datatable Records to DataBase    
        con.Open();  
        objbulk.WriteToServer(csvdt);  
        con.Close();  
  
  
    }  
}  
*/