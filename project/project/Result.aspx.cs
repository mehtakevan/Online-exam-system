using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project
{
    public partial class Result : System.Web.UI.Page
    {

        public string Score
        {
            get
            {
                return (Session["Total"].ToString());
            }
        }

        public string AnswerNot
        {
            get
            {
                return (Session["NotAnswered"].ToString());
            }
        }

        public string AnswerCorrect
        {
            get
            {
                return (Session["Correct"].ToString());
            }
        }

        public string AnswerIncorrect
        {
            get
            {
                return (Session["Incorrect"].ToString());
            }
        }

        public string Time
        {
            get
            {
                return (Session["TimeTaken"].ToString());
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void logout(object sender, EventArgs e)
        {
            Session["Name"] = string.Empty;
            Session["Total"] = string.Empty;
            Session["Sid"] = string.Empty;
            Session["Correct"] = string.Empty;
            Session["InCorrect"] = string.Empty;
            Session["NotAnswered"] = string.Empty;
            Response.Redirect("studentlogin.aspx");
        }
    }
}