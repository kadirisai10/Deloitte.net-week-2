using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StateManagementAndCaching
{
    public partial class Page2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string n = Request.QueryString["V1"].ToString();
            int a = int.Parse(Request.QueryString["V2"].ToString());
            string em = Request.QueryString["V3"].ToString();
            Response.Write(n + "<br/>" + a + "<br/>" + em);
        }
    }
}