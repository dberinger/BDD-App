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
        public void insertStudents()
        {
            SqlCommand sqlcmd = new SqlCommand("InsertRecord");
            sqlcmd.CommandType = CommandType.StoredProcedure;
            sqlcmd.Parameters.AddWithValue("@name", name);
            sqlcmd.Parameters.AddWithValue("@last_name", last_name);
            sqlcmd.Parameters.AddWithValue("@student_no", student_no);
            dal.queryExecution(sqlcmd);
        }
        public void updateStudents()
        {
            string sqlQuery =
            "UPDATE Students SET FirstName = @name, LastName = @last_name, StudentNo = @student_no WHERE Id_student = @id_student;";
            SqlCommand sqlcmd = new SqlCommand(sqlQuery);
            sqlcmd.Parameters.AddWithValue("@id_student", id_student);
            sqlcmd.Parameters.AddWithValue("@name", name);
            sqlcmd.Parameters.AddWithValue("@last_name", last_name);
            sqlcmd.Parameters.AddWithValue("@student_no", student_no);
            dal.queryExecution(sqlcmd);
        }
        public void deleteStudent()
        {
            string sqlQuery = "DELETE FROM Students WHERE Id_student = @id_student;";
            SqlCommand sqlcmd = new SqlCommand(sqlQuery);
            sqlcmd.Parameters.AddWithValue("@id_student", id_student);
            dal.queryExecution(sqlcmd);
        }
    }
}