using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Windows.Forms;


public partial class UserForm : System.Web.UI.Page
{
    BLL bobj = new BLL();
    int x;
    DLL dobj = new DLL();

    protected void Page_Load(object sender, EventArgs e)
    {
        Page.MaintainScrollPositionOnPostBack = true;
        SqlParameter bid = new SqlParameter("@maxid", SqlDbType.Int);
        txtcusid.Text = dobj.Max("Maxuser", bid).ToString();
        txtcusid.Enabled = false;

        errlbl.Visible = false;

        if (!Page.IsPostBack)
        {
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, new ListItem("Select City", string.Empty));

            DropDownList2.DataBind();
            DropDownList2.Items.Insert(0, new ListItem("Select State", string.Empty));

            DropDownList3.DataBind();
            DropDownList3.Items.Insert(0, new ListItem("Select Question", string.Empty));

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        if (string.Compare(DropDownList1.Text, "Select City") == 0)
        {
            MessageBox.Show("Pl Select City");
        }
     
        string cstatus = "confirm";
     
        string temp = null;
        if (FileUpload1.HasFile)
        {
            temp = "~/IMG/" + FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath(temp));
        }
        
            SqlParameter CusId = new SqlParameter("@cusId", txtcusid.Text);
            SqlParameter CusName = new SqlParameter("@cusName", txtcusname.Text);
            SqlParameter Add1 = new SqlParameter("@ADD1", txtadd1.Text);
            SqlParameter Add2 = new SqlParameter("@ADD2", txtadd2.Text);
            SqlParameter stateid = new SqlParameter("@stateid", DropDownList2.SelectedValue);
            SqlParameter cityid = new SqlParameter("@cityid", DropDownList1.SelectedValue);
            SqlParameter pincode = new SqlParameter("@pincode", txtpincode.Text);
            SqlParameter Contect = new SqlParameter("@contectno", txtphoneno.Text);
            SqlParameter emailid = new SqlParameter("@emailid", txtemailid.Text);
            SqlParameter gender = new SqlParameter("@gender", RadioButtonList1.Text);
            SqlParameter questionid = new SqlParameter("@questionid", DropDownList3.SelectedValue);
            SqlParameter answer = new SqlParameter("@answer", txtanswer.Text);
            SqlParameter username = new SqlParameter("@username", txtusername.Text);
            SqlParameter password = new SqlParameter("@password", txtpassword.Text);
            SqlParameter image = new SqlParameter("@image", temp.ToString());
            SqlParameter status = new SqlParameter("@status",cstatus.ToString());
            SqlParameter[] pdata = new SqlParameter[16] { CusId, CusName, Add1, Add2, stateid, cityid, pincode, Contect, emailid, gender, questionid, answer, username, password, image ,status };

            try
            {
                x = bobj.insert("userinsert1", pdata);
                if (x != 0)
                {
                    errlbl.Visible = true;
                    errlbl.Text = "Sucessfully Inserted";
                    Response.Redirect("loginform.aspx");
                }
                else
                {
                    errlbl.Visible = true;
                    errlbl.Text = "invalid info";
                }
            }
            catch (Exception ex)
            {
                errlbl.Visible = true;
                errlbl.Text = ex.Message;
            }
            finally
            {
                bobj = null;
            }

        }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        if (string.Compare(DropDownList1.Text, "Select City") == 0)
        {
            MessageBox.Show("Pl Select City");
        }
        
        string cstatus="confirm";
        string temp = null;
        if (FileUpload1.HasFile)
        {
            temp = "~/IMG/" + FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath(temp));
       
        }
        SqlParameter CusId = new SqlParameter("@cusId", txtcusid.Text);
        SqlParameter CusName = new SqlParameter("@cusName", txtcusname.Text);
        SqlParameter Add1 = new SqlParameter("@ADD1", txtadd1.Text);
        SqlParameter Add2 = new SqlParameter("@ADD2", txtadd2.Text);
        SqlParameter Stateid = new SqlParameter("@stateid", DropDownList1.SelectedValue);
        SqlParameter Cityid = new SqlParameter("@cityid", DropDownList2.SelectedValue);
        SqlParameter Pincode = new SqlParameter("@PincodeNo", txtpincode.Text);
        SqlParameter Contectno = new SqlParameter("@ContectNo", txtphoneno.Text);
        SqlParameter EmailId = new SqlParameter("@EmailId", txtemailid.Text);
        SqlParameter gender = new SqlParameter("@gender", RadioButtonList1.Text);
        SqlParameter Question = new SqlParameter("@Question", DropDownList3.SelectedValue);
        SqlParameter Answer = new SqlParameter("@Answer", txtanswer.Text);
        SqlParameter UserName = new SqlParameter("@UserName", txtusername.Text);
        SqlParameter Password = new SqlParameter("@Password", txtpassword.Text);
        SqlParameter Image = new SqlParameter("@Image", temp.ToString());
        SqlParameter status = new SqlParameter("@status",cstatus.ToString());
        SqlParameter[] pdata = new SqlParameter[16] { CusId,CusName, Add1, Add2, Stateid, Cityid, Pincode, Contectno, EmailId, gender, Question, Answer, UserName, Password, Image,status };

        try
        {
            x = bobj.insert("userinsert1", pdata);
            if (x != 0)
            {
                errlbl.Visible = true;
                errlbl.Text = "Sucessfully Inserted";
                Response.Redirect("loginform.aspx");
            }
            else
            {
                errlbl.Visible = true;
                errlbl.Text = "invalid info";
            }
        }
        catch (Exception ex)
        {
            errlbl.Visible = true;
            errlbl.Text = ex.Message;
        }
        finally
        {
            bobj = null;
        }

    }
}
