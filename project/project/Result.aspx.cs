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
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}