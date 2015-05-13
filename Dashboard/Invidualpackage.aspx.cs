using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Curier_Client_Portal.Dashboard
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void submitpatient_Click(object sender, EventArgs e)
        {
            Response.Write("Test Messaage");
          

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection("Data Source=RANGANATH;Initial Catalog=Ndexpress;Integrated Security=True");
                conn.Open();
                String insertQuery = "insert into deliveries (delto,toadd1,toadd2,toadd3,tocity,tomob,deldescript) values (@name,@add1,@add2,@add3,@city,@phone,@desc)";
                SqlCommand con = new SqlCommand(insertQuery, conn);
                con.Parameters.AddWithValue("@name", recivername.Text);
                con.Parameters.AddWithValue("@add1", add1.Text);
                con.Parameters.AddWithValue("@add2", add2.Text);
                con.Parameters.AddWithValue("@add3", add3.Text);
                con.Parameters.AddWithValue("@city", city.Text);
                con.Parameters.AddWithValue("@phone", contactno.Text);
                con.Parameters.AddWithValue("@desc", deldesc.Text);
              

                con.ExecuteNonQuery();
                Response.Write("Successfull");


                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error" + ex.ToString());
            }

        
        }

    }
}