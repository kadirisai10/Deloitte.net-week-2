using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ControlsExample
{
    public partial class First : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnclick_Click(object sender, EventArgs e)
        {
            Response.Write("<font color='red'>" + "First ASP.NET Example" + "</font>");//displays in web page as  First ASP.Net Example
        }
    }
}