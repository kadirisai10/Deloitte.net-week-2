using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebProjects
{
    public partial class Project1 : System.Web.UI.Page
    {
        TrainingDBEntities db = new TrainingDBEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(TextBox1.Text) && string.IsNullOrEmpty(TextBox2.Text))
            {
                var data = db.ResgisterShoppings.ToList();
                GridView1.DataSource = data;
                GridView1.DataBind();
            }
                if(!string.IsNullOrEmpty(TextBox1.Text))
                {
                    string name = TextBox1.Text;
                    var data = (from t in db.ResgisterShoppings
                                where t.Name == name
                                select t).ToList();
                    if (data.Count() == 0)
                        Label1.Text = "Name Invalid";
                    else
                    {
                        GridView1.DataSource = data;
                        GridView1.DataBind();
                    }
                     
                }

            if (!string.IsNullOrEmpty(TextBox2.Text))
            {
                string gender = TextBox2.Text;
                var data = (from t in db.ResgisterShoppings
                            where t.Gender == gender
                            select t).ToList();
                if (data.Count() == 0)
                    Label1.Text = "gender Invalid";
                else
                {
                    GridView1.DataSource = data;
                    GridView1.DataBind();
                }

            }
        }
        }
    }
