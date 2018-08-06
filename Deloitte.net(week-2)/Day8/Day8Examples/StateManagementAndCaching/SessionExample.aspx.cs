using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StateManagementAndCaching
{
    public partial class SessionExample : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnredirect_Click(object sender, EventArgs e)
        {
            Session["name"] = TextBox1.Text;
            Session["age"] = TextBox2.Text;
            Response.Redirect("RedirectPage.aspx");
        }
    }
}