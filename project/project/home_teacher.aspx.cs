using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project
{
    public partial class home_teacher : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnuq_click(object sender, EventArgs e)
        {
            Response.Redirect("teacherhome.aspx");
        }
        protected void btnreport_click(object sender, EventArgs e)
        {
            Response.Redirect("TeacherReport.aspx");
        }
    }
}