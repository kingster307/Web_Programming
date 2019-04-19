using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace midtermProjectWebProgrammingAPlus.Properties
{
    public partial class testResults : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label3.Text = Session["nameOfUser"].ToString();
            Label2.Text = Session["finalGrade"].ToString();
            Label1.Text = Session["finalGrade"].ToString();

            string name = Session["nameOfUser"].ToString();

            Label4.Text = name + "'s Test Results";

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("testReview.aspx");
        }
    }
}