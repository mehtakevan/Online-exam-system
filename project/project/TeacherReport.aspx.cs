using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project
{
    public partial class TeacherReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void fsubjectselect(object sender, EventArgs e)
        {
            string selectedField = ddstd.SelectedValue;

            if (selectedField != "Select standard")
            {

                int std = int.Parse(selectedField);

                // Fetch related content based on the selected field
                List<string> relatedContent = FetchRelatedContent(std);

                // Populate the second dropdown with the related content
                ddsub.DataSource = relatedContent;
                ddsub.DataBind();

                // Add a default "Select Content" option to the second dropdown
                ddsub.Items.Insert(0, new ListItem("Select Content", ""));
            }
            else
            {
                Response.Write("Please Select Standard");
                ddsub.Items.Clear();
                ddsub.Items.Insert(0, new ListItem("Select Content", ""));
            }
        }

        protected List<string> FetchRelatedContent(int std)
        {
            List<string> relatedContent = null;

            relatedContent = new List<string>();

            string constr = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Lenovo\\Desktop\\gitrepo\\project\\project\\App_Data\\Database.mdf;Integrated Security=True";

            try
            {
                SqlConnection con = new SqlConnection(constr);
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "Select Subject from Course where standard = @std";
                cmd.Parameters.AddWithValue("@std", std);

                using (con)
                {
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        string sub = reader["Subject"].ToString();
                        relatedContent.Add(sub);
                    }
                }

            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }

            return relatedContent;
        }

        public class ReportData
        {
            public string StudentName { get; set; }
            public int Marks { get; set; }
            // Add other properties as needed
        }
        protected void btnreport_click(object sender, EventArgs e)
        {
            string selectedField = ddstd.SelectedValue;
            int std = int.Parse(selectedField);
            string sub = ddsub.Text;
            int cid = FetchCourseId(sub, std);

            string constr = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Lenovo\\Desktop\\gitrepo\\project\\project\\App_Data\\Database.mdf;Integrated Security=True";
            List<ReportData> report = new List<ReportData>();
            try
            {
                SqlConnection con = new SqlConnection(constr);
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "SELECT r.*, s.Name FROM Report r INNER JOIN Student s ON r.SID = s.Id where CID = @cid";
                cmd.Parameters.AddWithValue("@cid", cid);
                using (con)
                {
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        string nm = reader["Name"].ToString();
                        string tmarks = reader["Marks"].ToString();
                        int marks = int.Parse(tmarks);
                        ReportData rd = new ReportData(); 
                        rd.StudentName = nm;
                        rd.Marks = marks;
                        report.Add(rd);
                    }

                }
            }catch(Exception ex)
            {
                Response.Write(ex.ToString());
            }
            //Response.Write(report[0]);
            GridViewReport.DataSource = report;
            GridViewReport.DataBind();
        }
        protected int FetchCourseId(string sub, int std)
        {
            int cid = -1;
            string ccid = "";
            string constr = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Lenovo\\Desktop\\gitrepo\\project\\project\\App_Data\\Database.mdf;Integrated Security=True";
            try
            {
                SqlConnection con = new SqlConnection(constr);
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "Select Id from Course where Subject = @sub and standard = @std";
                cmd.Parameters.AddWithValue("@std", std);
                cmd.Parameters.AddWithValue("@sub", sub);
                using (con)
                {
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        ccid = reader["Id"].ToString();
                    }

                }
            }
            catch (Exception ex)
            {
                Response.Write(ex);
                Response.Write(ex.ToString());
            }
            cid = int.Parse(ccid);
            return cid;
        }
    }
}