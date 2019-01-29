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
        public string queryExecution(SqlCommand sqlcmd)
        {
            string message;
            sqlcmd.Connection = conn;
            conn.Open();
            sqlcmd.CommandType = CommandType.StoredProcedure;
            sqlcmd.Parameters.Add("@msg", SqlDbType.VarChar, 100);
            sqlcmd.Parameters["@msg"].Direction = ParameterDirection.Output;
            sqlcmd.ExecuteNonQuery();
            message = (string)sqlcmd.Parameters["@msg"].Value;
            conn.Close();
            return message;
        }
    }
}