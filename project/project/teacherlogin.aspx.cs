using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project
{
    public partial class teacherlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }
        DataSet ds;
        protected void btnlogin_click(object sender, EventArgs e)
        {
            Trace.Write("Hello");
            Response.Write("Hum sath");
            string constr = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\msjsc\\Desktop\\WAD\\project2\\project\\project\\App_Data\\Database.mdf;Integrated Security=True";
            try
            {
                SqlConnection con = new SqlConnection(constr);
                SqlCommand cmd = new SqlCommand();
                string uname = tbUName.Text;
                string upassword = tbPassword.Text;
                cmd.Connection = con;
                cmd.CommandText = "SELECT * FROM Teacher where UserName = @uname and Password = @upassword";
                cmd.Parameters.AddWithValue("@uname", uname);
                cmd.Parameters.AddWithValue("@upassword", upassword);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                ds = new DataSet();
                using (con)
                {

                    con.Open();
                    da.Fill(ds, "Teacher");
                    DataTable dt = ds.Tables["Teacher"];
                    Boolean hasdata = dt.Rows.Count == 1;
                    if (hasdata)
                    {
                        Response.Redirect("home.aspx");
                    }
                    else
                    {
                        Response.Redirect("teacherlogin.aspx");
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }

        protected void btnsignup_Click(object sender, EventArgs e)
        {
            Response.Redirect("teachersignUp.aspx");
        }
    }
}