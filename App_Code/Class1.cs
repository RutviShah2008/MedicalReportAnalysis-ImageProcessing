using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for Class1
/// </summary>
public class Class1
{
    SqlConnection con;
    SqlCommand cmd;
    //int x;
	public Class1()
	{
        con=new SqlConnection(ConfigurationManager.ConnectionStrings["FinalConnection"].ConnectionString);
        con.Open();		
	}

    public int insert(string sp, SqlParameter[] pdata)
    {
        con.Close();
        con.Open();
        cmd = new SqlCommand(sp);
        cmd.Connection = con;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddRange(pdata);
        int x = cmd.ExecuteNonQuery();
        return x;
    }
    public int max(string sp, SqlParameter pdata)//fing Max-Min
    {
        con.Close();
        SqlCommand cmd = new SqlCommand(sp);
        con.Open();
        cmd.Connection = this.con;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add(pdata);//only one variable that is way we use Add
        pdata.Direction = ParameterDirection.Output;//becz we have to fetch datat from db that is userid
        cmd.ExecuteScalar();//give the ans for execution of max/min/avg/sum 
        int x = Convert.ToInt16(cmd.Parameters[0].Value);//convert ans into int type
        return x;
    }
    public int check(string sp, SqlParameter[] pdata)
    {
        con.Close();
        SqlCommand cmd = new SqlCommand(sp);
        con.Open();
        cmd.Connection = this.con;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddRange(pdata);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            return 1;
        }
        else
        {
            return 0;
        }
    }
    public DataSet RetriveAll(string sp, SqlParameter[] pdata)
    {
        con.Close();
        SqlCommand cmd = new SqlCommand(sp);
        con.Open();
        cmd.Connection = this.con;
        cmd.Parameters.AddRange(pdata);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;
    }
    public DataSet Fetch(string sp )
    {
        con.Close();
        SqlCommand cmd = new SqlCommand(sp);
        con.Open();
        cmd.Connection = this.con;
         cmd.CommandType = CommandType.StoredProcedure;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;
    }
    public object userselect(string str)
    {
        con.Close();
        con.Open();
        cmd = new SqlCommand(str,con);
        object st = cmd.ExecuteScalar();
        return st;
    }
    public DataSet selectall(string str)
    {
        con.Close();
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter(str,con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;
    }
    public int delete(string str)
    {
        con.Close();
        con.Open();
        cmd = new SqlCommand(str, con);
        int x = cmd.ExecuteNonQuery();
        return x;
    }
}