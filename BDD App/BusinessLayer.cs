using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace BDD_App
{
    public class BusinessLayer
    {
        DataAccessLayer dal = new DataAccessLayer();
        public int id_student { get; set; }
        public string name { get; set; }
        public string last_name { get; set; }
        public int student_no { get; set; }

        public DataSet selectStudents()
        {
            string sqlQuery = "SELECT * FROM Students;";
            SqlCommand sqlcmd = new SqlCommand();
            sqlcmd.CommandText = sqlQuery;
            return dal.displayData(sqlcmd);
        }
        public string insertStudents()
        {
            SqlCommand sqlcmd = new SqlCommand("InsertRecord");
            sqlcmd.Parameters.AddWithValue("@name", name);
            sqlcmd.Parameters.AddWithValue("@last_name", last_name);
            sqlcmd.Parameters.AddWithValue("@student_no", student_no);
            return dal.queryExecution(sqlcmd);
        }
        public string updateStudents()
        {
            SqlCommand sqlcmd = new SqlCommand("UpdateRecord");
            sqlcmd.Parameters.AddWithValue("@id_student", id_student);
            sqlcmd.Parameters.AddWithValue("@name", name);
            sqlcmd.Parameters.AddWithValue("@last_name", last_name);
            sqlcmd.Parameters.AddWithValue("@student_no", student_no);
            return dal.queryExecution(sqlcmd);
        }
        public string deleteStudent()
        {
            SqlCommand sqlcmd = new SqlCommand("DeleteRecord");
            sqlcmd.Parameters.AddWithValue("@id_student", id_student);
            return dal.queryExecution(sqlcmd);
        }
    }
}