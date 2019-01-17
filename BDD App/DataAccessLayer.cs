using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace BDD_App
{
    public class DataAccessLayer
    {
        SqlConnection conn =
            new SqlConnection(ConfigurationManager.ConnectionStrings["StudentsConnectionString"].ConnectionString);
        public DataSet displayData(SqlCommand sqlcmd)
        {
            sqlcmd.Connection = conn;
            SqlDataAdapter sda = new SqlDataAdapter(sqlcmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            return ds;
        }
        public void queryExecution(SqlCommand sqlcmd)
        {            
            sqlcmd.Connection = conn;
            conn.Open();
            sqlcmd.ExecuteNonQuery();
            conn.Close();
        }
    }
}