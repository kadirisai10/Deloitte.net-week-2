using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VehicleCount
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnselectin_Click(object sender, EventArgs e)
        {
            Response.Redirect("CheckIN.aspx");
        }

        protected void btnselectout_Click(object sender, EventArgs e)
        {
            Response.Redirect("CheckOut.aspx");
        }
    }
}