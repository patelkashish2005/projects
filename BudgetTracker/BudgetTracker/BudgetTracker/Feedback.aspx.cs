using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BudgetTracker
{
    public partial class Feedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string feedback = txtFeedback.Value.Trim();
            ScriptManager.RegisterStartupScript(this, GetType(), "FeedbackSuccess", "alert('Thank you for your feedback!');", true);
            txtFeedback.Value = "";
        }
    }
}