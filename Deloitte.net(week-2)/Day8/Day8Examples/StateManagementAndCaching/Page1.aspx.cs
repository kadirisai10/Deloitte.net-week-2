using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StateManagementAndCaching
{
    public partial class Page1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnquerystring_Click(object sender, EventArgs e)
        {
            Response.Redirect("Page2.aspx?V1=" + txtname.Text + "&V2=" + txtage.Text + "&V3=" + txtemail.Text);
        }
    }
}