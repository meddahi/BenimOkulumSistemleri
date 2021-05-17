using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BenimOkulumSistemleri
{
    public partial class AddTeacher : System.Web.UI.Page
    {
        DBhand db;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["role"] == null || (!Session["role"].ToString().Equals("admin")))
                Response.Redirect("Login.aspx");
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            db = new DBhand();
            db.AddTeacher(TextBoxName.Text, TextBoxEmail.Text, TextBoxQulf.Text, TextBoxContact.Text, TextBoxAddr.Text, TextBoxUsername.Text, TextBoxPass.Text);

            Response.Redirect("Teacher.aspx");
        }
    }
}