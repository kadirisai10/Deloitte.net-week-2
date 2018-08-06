using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VehicleCount
{
    public partial class CheckOut : System.Web.UI.Page
    {
        AssignmentDBEntities3 db = new AssignmentDBEntities3();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!(IsPostBack))
            {
                var data = (from t in db.Tables
                            where t.status=="SignedIN"
                            select new { t.VisitorsId, t.Fname, t.Lname, t.IdType, t.IdNum }).ToList();
                gdresult.DataSource = data.ToList();
                gdresult.DataBind();
            }
        }

        protected void btnsearchid_Click(object sender, EventArgs e)
        {
            if(!string.IsNullOrEmpty(txtvisitorsin.Text))
            {
                int id = int.Parse(txtvisitorsin.Text);
                var data = (from t in db.Tables
                            where( t.VisitorsId == id) && (t.status=="SignedIN")
                            select new { t.VisitorsId, t.Fname, t.Lname, t.IdType, t.IdNum }).ToList();
                if (data.Count() == 0)
                    Response.Write("Invalid ID");
                else
                {
                    gdresult.DataSource = data.ToList();
                     
                    gdresult.DataBind();
                }

            }
        }

        protected void btnsearchname_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtvisitorsin.Text))
            {
                string name =txtvisitorsin.Text;
                var data = (from t in db.Tables
                            where ((t.Fname== name ||t.Lname==name) && t.status=="SignedIN")
                            select new { t.VisitorsId, t.Fname, t.Lname, t.IdType, t.IdNum }).ToList();
                if (data.Count() == 0)
                    Response.Write("Invalid Name");
                else
                {
                    gdresult.DataSource = data.ToList();

                    gdresult.DataBind();
                }

            }
        }

        protected void b1_Click(object sender, EventArgs e)
        {
            Button b = (Button)sender;
            GridViewRow r = (GridViewRow)b.NamingContainer;
            
            int id = int.Parse(r.Cells[1].Text);
            var olddata = (from t in db.Tables
                           where t.VisitorsId == id
                           select t).SingleOrDefault();
            olddata.status = "SignedOut";
            olddata.VisitorsId = id;
            var res = db.SaveChanges();
            if (res > 0)
                Response.Write("Status Updated");

            gdresult.DataBind();

            var data = (from t in db.Tables
                        where t.status == "SignedIN"
                        select new { t.VisitorsId, t.Fname, t.Lname, t.IdType, t.IdNum }).ToList();
            gdresult.DataSource = data.ToList();
            gdresult.DataBind();

            txtvisitorsin.Text = "";


        }

        protected void gdresult_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
    }
}