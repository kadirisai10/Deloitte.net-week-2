using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StateManagementAndCaching
{
    public partial class RedirectPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = Session["name"].ToString();
            int a = int.Parse(Session["age"].ToString());
            Label1.Text = name + "," + a;
            Label1.Text += "<br/>";
            Label1.Text += Session.SessionID;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session.Timeout = 3;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Session.Abandon();
        }
    }
}