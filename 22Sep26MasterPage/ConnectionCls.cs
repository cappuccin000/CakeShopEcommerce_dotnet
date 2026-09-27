using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace _22Sep26MasterPage
{
    public class ConnectionCls
    {
        SqlConnection con;
        SqlCommand cmd;

        public ConnectionCls()
        {
            con = new SqlConnection(@"server=YOLOBOSS\SQLEXPRESS;database=Ecomm_Project;Integrated Security=true");
        }

        public int Exec_NonQuery(string sqlQuery)// for insert, update and delete
        {
            if (con.State == ConnectionState.Open)
                con.Close();

            cmd = new SqlCommand(sqlQuery, con);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            return i;
        }

        public string Exec_Scalar(string sqlQuery)// for aggregates
        {
            if (con.State == ConnectionState.Open)
                con.Close();

            cmd = new SqlCommand(sqlQuery, con);
            con.Open();
            string s = cmd.ExecuteScalar().ToString();
            con.Close();
            return s;
        }

        public SqlDataReader Exec_Reader(string sqlQuery) // for select cmds
        {
            if (con.State == ConnectionState.Open)
                con.Close();

            cmd = new SqlCommand(sqlQuery, con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            return dr;
        }

        public DataSet Exec_Adapter_DataSet(string sqlQuery)// for disconnected mode DataSet
        {
            if (con.State == ConnectionState.Open)
                con.Close();

            SqlDataAdapter da = new SqlDataAdapter(sqlQuery, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        public DataTable Exec_Adapter_DataTable(string sqlQuery)// for disconnected mode DataTable
        {
            if (con.State == ConnectionState.Open)
                con.Close();

            SqlDataAdapter da = new SqlDataAdapter(sqlQuery, con);
            DataTable ds = new DataTable();
            da.Fill(ds);
            return ds;
        }
    }
}