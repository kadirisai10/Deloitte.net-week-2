using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entity;
using BAL;
using System.Web.Security;

namespace WebUI
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Login1.UserNameLabelText = "User ID";
        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
           
        }

        protected void Login1_Authenticate1(object sender, AuthenticateEventArgs e)
        {
           
        }

        protected void Login1_Authenticate2(object sender, AuthenticateEventArgs e)
        {
            LoginEntity le = new LoginEntity();

            le.UserID = int.Parse(Login1.UserName);
            le.password = Login1.Password;
            LoginBal bal = new LoginBal();
            try
            {
                var res = bal.Authenticate(le);
                if (res)
                    // Login1.FailureText = "Login Details Valid";
                    FormsAuthentication.RedirectFromLoginPage(le.UserID.ToString(), false);  //storing of user details

            }
            catch (Exception ex)
            {

                Login1.FailureText = ex.Message;
            }
        }
    }
}