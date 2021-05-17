using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BenimOkulumSistemleri
{
    public partial class UpdateBranch : System.Web.UI.Page
    {
        DBhand db;
        protected void Page_Load(object sender, EventArgs e)
        {
            db = new DBhand();

            String id = Request.QueryString["id"];


            if (id != null)
            {
                TextBoxBranchId.Text = id;

            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            String resp = db.UpdateBranch(TextBoxBranchId.Text, TextBoxBranchName.Text);

            Response.Redirect("Branch.aspx");
            //Response.Write(resp+" "+TextBoxBranchId.Text+"*"+TextBoxBranchName.Text);
        }
    }
}