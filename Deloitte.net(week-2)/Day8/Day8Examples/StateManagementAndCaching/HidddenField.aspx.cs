using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StateManagementAndCaching
{
    public partial class HidddenField : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private string Calculateratings()
        {
            if (TextBox2.Text.StartsWith("X") || TextBox2.Text.StartsWith("Y") || TextBox2.Text.StartsWith("Z"))
            {
                HiddenField1.Value = "Bad";
            }
            else
                HiddenField1.Value = "Good";

            return HiddenField1.Value.ToString();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = Calculateratings();
        }
        }
    }
