using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project
{
    public partial class studentsignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }
        DataSet ds;
        protected void btnregister_Click(object sender, EventArgs e)
        {
            Console.WriteLine("Entered");
            Response.Write("Hello");
            /*
            string constr = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\msjsc\\Desktop\\WAD\\project\\project\\project\\App_Data\\Database.mdf;Integrated Security=True";
            try
            {
                SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "SELECT * FROM User";
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            ds = new DataSet();


                using (con)
                {
                    con.Open();
                    da.Fill(ds, "User");
                    //DataTable dt = ds.Tables["User"];
                   // DataRow dr = dt.NewRow();
                    //dr["Name"] = tbName.Text;
                    //dr["UserName"] = tbUName.Text;
                    //dr["Email"] = tbEmail.Text;
                    //dr["Password"] = tbPassword.Text;
                    //dt.Rows.Add(dr);
                    //SqlCommandBuilder cmdBuilder = new SqlCommandBuilder(da);
                    //da.Update(ds, "User");
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("In catch");
                Console.WriteLine(ex.Message);
            }
            //GridView1.DataSource = ds.Tables["User"];
            //GridView1.DataBind();
            */
        }

        protected void btnregistr_Click(object sender, EventArgs e)
        {
            string constr = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\msjsc\\Desktop\\WAD\\project2\\project\\project\\App_Data\\Database.mdf;Integrated Security=True";
            try
            {
                SqlConnection con = new SqlConnection(constr);
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "SELECT * FROM Student";
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                ds = new DataSet();
                using (con)
                {

                    con.Open();
                    da.Fill(ds, "Student");
                    DataTable dt = ds.Tables["Student"];
                    DataRow dr = dt.NewRow();
                    dr["Name"] = tbName.Text;
                    dr["UserName"] = tbUName.Text;
                    dr["Email"] = tbEmail.Text;
                    dr["Password"] = tbPassword.Text;
                    dt.Rows.Add(dr);
                    SqlCommandBuilder cmdBuilder = new SqlCommandBuilder(da);
                    da.Update(ds, "Student");
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }
    }
}