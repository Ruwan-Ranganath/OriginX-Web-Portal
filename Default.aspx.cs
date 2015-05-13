using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Curier_Client_Portal
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginsubmit_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=RANGANATH;Initial Catalog=Ndexpress;Integrated Security=True");
            conn.Open();
            String loginQuery = "select count(*) from login where uname ='" + username.Text + "'";
            SqlCommand con = new SqlCommand(loginQuery, conn);
            int temp = Convert.ToInt32(con.ExecuteScalar().ToString());
            conn.Close();

            if (temp == 1)
            {
                conn.Open();
                string checkpassword = "select upass from Login where uname ='" + username.Text + "'";
                SqlCommand passcomm = new SqlCommand(checkpassword, conn);
                string password = passcomm.ExecuteScalar().ToString().Trim();

                if (password == upassword.Text)
                {
                    Session["New"] = username.Text;
                    Response.Write("Login Validated !");
                    Response.Redirect("~/Dashboard/Default.aspx");

                }
                else
                {
                    Response.Write("Invalid Password");

                }
            }
            else
            {
                Response.Write("user name is invalid");
            }
        }
    }
}