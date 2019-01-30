using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BDD_App
{
    public partial class WebForm1 : System.Web.UI.Page
    {      
        BusinessLayer bl = new BusinessLayer();
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl.Text = "Database status: Ready";
            refresh_GridView(GridView1);
        }
        //  GRIDVIEW REFRESH
        protected void refresh_GridView(GridView grv)
        {
            grv.DataSource = bl.selectStudents();
            grv.DataBind();
        }
        //  TEXTBOXES CLEANER
        protected void cleanAllTextBoxes(Control parent)
        {
            foreach (Control x in parent.Controls)
            {
                if(x.GetType()==typeof(TextBox))
                {
                    ((TextBox)x).Text = "";
                }
                if(x.HasControls())
                {
                    cleanAllTextBoxes(x);
                }
            }
        }
        //  INSERT
        protected void btnInsert_Click1(object sender, EventArgs e)
        {
            bl.name = txtBoxName.Text;
            bl.last_name = txtBoxLastName.Text;
            bl.student_no = Convert.ToInt32(txtBoxStudentNo.Text);
            lbl.Text = bl.insertStudents();
            refresh_GridView(GridView1);
            cleanAllTextBoxes(this);
        }
        //  UPDATE
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            Page.Validate(((Button)sender).ValidationGroup);
            bl.id_student = Convert.ToInt32(txtBoxID.Text);
            bl.name = txtBoxName.Text;
            bl.last_name = txtBoxLastName.Text;
            bl.student_no = Convert.ToInt32(txtBoxStudentNo.Text);
            if (Page.IsValid)
            {
                lbl.Text = bl.updateStudents();
                refresh_GridView(GridView1);
                cleanAllTextBoxes(this);
            }
        }
        //  DELETE
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            bl.id_student = Convert.ToInt32(txtBoxID.Text);
            lbl.Text = bl.deleteStudent();
            refresh_GridView(GridView1);
            cleanAllTextBoxes(this);            
        }        
    }
}