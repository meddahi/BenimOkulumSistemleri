using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BenimOkulumSistemleri
{
    public partial class DeleteBranch : System.Web.UI.Page
    {
        DBhand db;
        protected void Page_Load(object sender, EventArgs e)
        {
            db = new DBhand();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            db.DeleteBranch(TextBoxBranchName.Text);
            Response.Redirect("Branch.aspx");
        }
    }
}