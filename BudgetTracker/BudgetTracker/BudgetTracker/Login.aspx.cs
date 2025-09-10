using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BudgetTracker
{
    public partial class LoginForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Value.Trim();
            string password = txtPassword.Value.Trim();

            if (username == "admin" && password == "bca")
            {
                Response.Redirect("~/Dashboard.aspx");
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "InvalidLogin", "alert('Invalid username or password.');", true);
            }
        }
    }
}