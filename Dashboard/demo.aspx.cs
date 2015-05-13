using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.OleDb;
using System.Data.Common;
using System.IO;
using System.Drawing;

namespace Curier_Client_Portal.Dashboard
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                string path = string.Concat((Server.MapPath("~/temp/" + FileUpload1.FileName)));
                FileUpload1.PostedFile.SaveAs(path);
                OleDbConnection oledbcon = new OleDbConnection("PROVIDER=MICROSOFT.ACE.OLEDB.12.0;DATA Source="+path+";Extended Properties=Excel 12.0;");
                OleDbCommand cmd = new OleDbCommand("SELECT * FROM [sheet1$]", oledbcon);
                OleDbDataAdapter ObjAdapter = new OleDbDataAdapter(cmd);
                oledbcon.Open();
                DbDataReader dr = cmd.ExecuteReader();
                string con_str = @"Data Source=RANGANATH;Initial Catalog=Ndexpress;Integrated Security=True";
                SqlBulkCopy bulkinsert = new SqlBulkCopy(con_str);
                bulkinsert.DestinationTableName = "deliveries";
                bulkinsert.WriteToServer(dr);
                oledbcon.Close();
                Array.ForEach(Directory.GetFiles((Server.MapPath("~/temp"))),File.Delete);
                Label1.ForeColor = Color.Green;
                Label1.Text = "Succssfully Added";
                FetchData();

            }
        }
        public void FetchData()
        {
             SqlConnection conn = new SqlConnection("Data Source=RANGANATH;Initial Catalog=Ndexpress;Integrated Security=True");
             SqlCommand cmd = new SqlCommand("SELECT * FROM deliveries", conn);
             conn.Open();
             SqlDataReader rdr = cmd.ExecuteReader();
             GridView1.DataSource = rdr;
             GridView1.DataBind();


                
       

        }
    }
}