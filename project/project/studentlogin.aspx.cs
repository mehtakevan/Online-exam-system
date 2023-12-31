﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project
{
    public partial class studentlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }
        DataSet ds;
        protected void btnlogin_click(object sender, EventArgs e)
        {

            string uname = tbUName.Text;
            string upassword = tbPassword.Text;
            string constr = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\msjsc\\Desktop\\WAD\\project2\\project\\project\\App_Data\\Database.mdf;Integrated Security=True";
            try
            {
                SqlConnection con = new SqlConnection(constr);
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "SELECT * FROM Student where UserName = @uname and Password = @upassword";
                cmd.Parameters.AddWithValue("@uname", uname);
                cmd.Parameters.AddWithValue("@upassword", upassword);
                int sid;
                string ssid = "";
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                ds = new DataSet();
                using (con)
                {

                    con.Open();
                    da.Fill(ds, "Student");
                    DataTable dt = ds.Tables["Student"];
                    Boolean hasdata = dt.Rows.Count == 1;
                    SqlDataReader reader = cmd.ExecuteReader();
                    if (hasdata)
                    {
                        while (reader.Read())
                        {
                            ssid = reader["Id"].ToString();
                        }
                        sid = int.Parse(ssid);
                        Session["stdId"] = sid;
                        Response.Write(sid);   
                        Response.Redirect("studenthome.aspx");
                    }
                    else
                    {
                        Response.Redirect("studentlogin.aspx");
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
            Response.Redirect("studentsignUp.aspx");
        }
    }
}