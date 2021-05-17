using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BenimOkulumSistemleri
{
    public partial class AddStudentCourse : System.Web.UI.Page
    {
        DBhand db;
        protected void Page_Load(object sender, EventArgs e)
        {
            db = new DBhand();
            if (Session["role"] == null || !(Session["role"].ToString().Equals("admin")))
                Response.Redirect("Login.aspx");
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            db.AssignStudentCourse(TextBoxPRN.Text, TextBoxCourseId.Text);
            Response.Redirect("StudentCourses.aspx");
        }
    }
}