using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BenimOkulumSistemleri
{
    public partial class DeleteStudent : System.Web.UI.Page
    {
        DBhand db;
        protected void Page_Load(object sender, EventArgs e)
        {
            db = new DBhand();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            db.DeleteStudent(TextBoxStudentPRN.Text);
            Response.Redirect("Student.aspx");
        }
    }
}