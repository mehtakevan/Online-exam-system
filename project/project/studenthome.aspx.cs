using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project
{
    public partial class studenthome : System.Web.UI.Page
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

            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }

            return relatedContent;
        }

        public class Question
        {
            public int Marks { get; set; }
            public int NegativeMarks { get; set; }
            public string QuestionText { get; set; }

            public List<string> Options { get; set; }
        }



        protected void btnsubmit_click(object sender, EventArgs e)
        {
            // Fetch the questions from the backend (replace with your data retrieval logic)
            List<Question> questions = FetchQuestionsFromDatabase(); // Implement this function

            // Bind the questions to a server-side control (e.g., Repeater)
            QuestionsRepeater.DataSource = questions;
            QuestionsRepeater.DataBind();
        }
        protected List<Question> FetchQuestionsFromDatabase()
        {
            List<Question> q = new List<Question>();
            string constr = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\msjsc\\Desktop\\WAD\\project2\\project\\project\\App_Data\\Database.mdf;Integrated Security=True";
            SqlConnection con = new SqlConnection(constr);

            using (con)
            {
                con.Open();
                string sub = ddsub.Text;
                int std = int.Parse(ddstd.Text);
                int cid = FetchCourseId(sub, std);
                string query = "SELECT * FROM Question where CId = @cid";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@cid", cid);
                 using (SqlDataReader reader = cmd.ExecuteReader())
                 {
                        while (reader.Read())
                        {
                            List<string>op = new List<string>();
                            string questionText = reader["Question"].ToString();
                            string opa = reader["Option A"].ToString();
                            string opb = reader["Option B"].ToString();
                            string opc = reader["Option C"].ToString();
                            string opd = reader["Option D"].ToString();
                            op.Add(opa);
                            op.Add(opb);
                            op.Add(opc);
                            op.Add(opd);
                            string tmarks = reader["Marks"].ToString();
                            string tnegmark = reader["Negmarks"].ToString();
                            Response.Write(tnegmark);
                            int marks = int.Parse(tmarks);
                            int negmarks = int.Parse(tnegmark);
                            Question question = new Question(); 
                            question.QuestionText = questionText;
                            question.Options = op;
                            question.Marks = marks;
                            question.NegativeMarks = negmarks;

                            q.Add(question);
                        }
                 }
            }
            return q;
        }
        protected int FetchCourseId(string sub, int std)
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