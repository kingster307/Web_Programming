using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace midtermProjectWebProgrammingAPlus.Properties
{
    public partial class peterIsAmazingAtDoingNothing : System.Web.UI.Page
    {
        string nameOfUser;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (textboxName.Text.Length == 0)
            {
                //tried to do a message box/alert but its not working 
              //ClientScript.RegisterStartupScript(this.GetType(), "myalert", "Please enter your name", true);
            }
            else {
                nameOfUser = textboxName.Text;

                
                Session["nameOfUser"] = textboxName.Text;

                //Session.Add("userName", nameOfUser);


                Response.Redirect("startTest.aspx");
            }
        }
    }
}