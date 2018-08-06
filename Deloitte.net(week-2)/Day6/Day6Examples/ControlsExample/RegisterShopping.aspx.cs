using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ControlsExample
{
    public partial class RegisterShopping : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnregister_Click(object sender, EventArgs e)
        {
            ///textbox
            
            string name = txtname.Text;
            string pass = txtpass.Text;

            //dropdownlist
            string gender = ddlgender.SelectedItem.Text;

            //radiobutton
            string membership = " ";
            if (rbfree.Checked)
                membership = rbfree.Text;
            if (rbpaid.Checked)
                membership = rbpaid.Text;

            //checkboxlist or for radio list
            string shoppref = " ";
            foreach (ListItem li in cblshopping.Items)
            {
                if (li.Selected)
                    shoppref += li.Text + ",";


            }

            //checkbox
            string cod = " ";
            if (cbcod.Checked)
                cod = "Yes";
            else
                cod = "No";

            //Label1.Text = name + "<br/>" + gender + "<br/>" + membership + "<br/>"  + shoppref + "<br/>" + cod + "<br/>" + pass;




        }
    }
}