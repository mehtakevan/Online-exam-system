using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project
{
    public partial class Homepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnteacher_click(object sender, EventArgs e)
        {
            Response.Redirect("teacherlogin.aspx");
        }
        protected void btnstudent_click(object sender, EventArgs e)
        {
            Response.Redirect("studentlogin.aspx");
        }
    }
}