using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StateManagementAndCaching
{
    public partial class AppExample : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Application["count"] = (int)Application["count"] + 1;
            Session["count"] = (int)Session["count"] + 1;
                Response.Write("application:" + Application["count"]);
            Response.Write("<br/>");
            Response.Write("Session:" + Session["count"]);
        }
    }
}