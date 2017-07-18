using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _2FactAuthDotNet
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if(txtEmail.Text == "sainath@revalsys.com" &&
                txtPassword.Text == "password")
            {
                Response.Redirect("Auth.aspx?userid=1");
            }
            else if (txtEmail.Text == "raj@revalsys.com" &&
                txtPassword.Text == "password")
            {
                Response.Redirect("Auth.aspx?userid=2");
            }
            else if (txtEmail.Text == "manikanta@revalsys.com" &&
                txtPassword.Text == "password")
            {
                Response.Redirect("Auth.aspx?userid=3");
            }
            else
            {
                lblMessage.Text = "Invalid User";
            }
        }
    }
}