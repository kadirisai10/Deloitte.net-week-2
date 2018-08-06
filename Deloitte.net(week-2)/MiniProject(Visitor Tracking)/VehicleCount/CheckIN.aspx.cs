using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace VehicleCount
{

    public partial class CheckIN : System.Web.UI.Page
    {
        AssignmentDBEntities2 db = new AssignmentDBEntities2();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            string first = txtfirst.Text;
            string last = txtlast.Text;
            string company = txtcompany.Text;
            string visiting = txtvisiting.Text;
            string IDtype = ddlidtype.SelectedItem.ToString();
            string IDNum = txtidnum.Text;
            string vehicle = txtvehiclenum.Text;
            string phone = txtphone.Text;
            string purpose = txtpurpose.Text;
            DateTime checkin = DateTime.Now;
          //  string status = TextBox1.Text;


            Table vi = new Table();

            vi.Fname = first;
            vi.Lname = last;
            vi.Company = company;
            vi.Visiting = visiting;
            vi.IdType = IDtype;
            vi.IdNum = IDNum;
            vi.vehicle = vehicle;
            vi.Contact = phone;
            vi.Purpose = purpose;
            vi.checkinTime = checkin;
            vi.status = "SignedIN";

            db.Tables.Add(vi);
            var res = db.SaveChanges();
            if (res > 0)
            {
                Response.Write("The visitor’s details has been saved successfully with  the visitor id " + vi.VisitorsId);
            }
            
          
                



        }

        protected void btncancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }
    }
}