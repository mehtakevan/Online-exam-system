using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project
{
    public partial class teacherhome : System.Web.UI.Page
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

            string constr = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\msjsc\\Desktop\\WAD\\project2\\project\\project\\App_Data\\Database.mdf;Integrated Security=True";

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

            }catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }

            return relatedContent;
        }

        protected void btnsubmit_click(object sender, EventArgs e)
        {
            string constr = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\msjsc\\Desktop\\WAD\\project2\\project\\project\\App_Data\\Database.mdf;Integrated Security=True";
            string sub = ddsub.Text;
            int std = int.Parse(ddstd.Text);
            int cid = FetchCourseId(sub, std);

            try
            { 
                using (SqlConnection connection = new SqlConnection(constr))
                {
                    connection.Open();

                    for (int i = 1; i <= 5; i++)
                    {
                        string questionText = ((TextBox)FindControl($"tbQ{i}")).Text;
                        string OptionA = ((TextBox)FindControl($"tbopaq{i}")).Text;
                        string OptionB = ((TextBox)FindControl($"tbopbq{i}")).Text;
                        string OptionC = ((TextBox)FindControl($"tbopcq{i}")).Text;
                        string OptionD = ((TextBox)FindControl($"tbopdq{i}")).Text;
                        string tmarks = ((TextBox)FindControl($"tbm{i}")).Text;
                        string tnegmarks = ((TextBox)FindControl($"tbnegm{i}")).Text;
                        string correctoption = ((DropDownList)FindControl($"ddans{i}")).SelectedValue;
                        string correctanswer = correctoption;

                        int marks = int.Parse(tmarks);
                        int negmarks = int.Parse(tnegmarks);

                        string insertQuery = "INSERT INTO Question (Question, [Option A], [Option B], [Option C], [Option D],Ans,Marks,NegMarks,CId) " +
                                             "VALUES (@QuestionText, @OptionA, @OptionB, @OptionC, @OptionD,@correctanswer,@marks,@negmarks,@cid)";

                        using (SqlCommand command = new SqlCommand(insertQuery, connection))
                        {
                            command.Parameters.AddWithValue("@QuestionText", questionText);
                            command.Parameters.AddWithValue("@OptionA", OptionA);
                            command.Parameters.AddWithValue("@OptionB", OptionB);
                            command.Parameters.AddWithValue("@OptionC", OptionC);
                            command.Parameters.AddWithValue("@OptionD", OptionD);
                            command.Parameters.AddWithValue("@correctanswer", correctanswer);
                            command.Parameters.AddWithValue("@cid", cid);
                            command.Parameters.AddWithValue("@marks", marks);
                            command.Parameters.AddWithValue("@negmarks", negmarks);
                            command.ExecuteNonQuery();
                        }
                    }
                }

                // Data successfully inserted, you can redirect or display a success message
            }
            catch (Exception ex)
            {
                Response.Write(ex);
                // Handle any exceptions (e.g., log the error, display an error message)
                // Response.Write($"Error: {ex.Message}");
            }
        }

        protected int FetchCourseId(string sub,int std)
        {
            int cid = -1;
            string ccid = "";
            string constr = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\msjsc\\Desktop\\WAD\\project2\\project\\project\\App_Data\\Database.mdf;Integrated Security=True";
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
            }catch(Exception ex)
            {
                Response.Write(ex);
                Response.Write(ex.ToString());  
            }
            cid = int.Parse(ccid);
            return cid;
        }
    }
}
