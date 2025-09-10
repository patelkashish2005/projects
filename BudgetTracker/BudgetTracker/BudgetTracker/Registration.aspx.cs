using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BudgetTracker
{
    public partial class RegisterForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                Response.Redirect("~/Dashboard.aspx"); // Redirect to dashboard page
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Value.Trim();
            string password = txtPassword.Value.Trim();
            string email = txtEmail.Value.Trim();

            // Perform registration logic (e.g., save to database, validate input, etc.)
            // For demonstration purposes, let's just display a success message
            ScriptManager.RegisterStartupScript(this, GetType(), "RegistrationSuccess", "alert('Registration successful. You can now login.');", true);
        }
    }
}