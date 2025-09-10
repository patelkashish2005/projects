using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace BudgetTracker
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                dt.Columns.AddRange(new DataColumn[5] { new DataColumn("Date"), new DataColumn("Income"), new DataColumn("ExpenseName"), new DataColumn("Category"), new DataColumn("Amount") });
                ViewState["Records"] = dt;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable dt = (DataTable)ViewState["Records"];
            dt.Rows.Add(TextBox1.Text, TextBox2.Text, "-", "-", "-");
            ViewState["Records"] = dt;
            GridView1.DataSource = dt;
            GridView1.DataBind();
            CalculateTotals(dt);
            TextBox1.Text = "";
            TextBox2.Text = "";
        }

        protected void btn_expense_Click(object sender, EventArgs e)
        {
            DataTable dt = (DataTable)ViewState["Records"];
            dt.Rows.Add(TextBox1.Text, "", TextBox3.Text, TextBox4.Text, TextBox5.Text);
            ViewState["Records"] = dt;
            GridView1.DataSource = dt;
            GridView1.DataBind();
            CalculateTotals(dt);
            TextBox1.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
        }
        private void CalculateTotals(DataTable dt)
        {
            decimal totalIncome = 0;
            decimal totalExpense = 0;
            foreach (DataRow row in dt.Rows)
            {
                if (!string.IsNullOrEmpty(row["Income"].ToString()))
                {
                    totalIncome += Convert.ToDecimal(row["Income"]);
                }
                else if (!string.IsNullOrEmpty(row["Amount"].ToString()))
                {
                    totalExpense += Convert.ToDecimal(row["Amount"]);
                }
            }

            decimal currentBalance = totalIncome - totalExpense;

            lblTotalIncome.Text = "₹" + totalIncome.ToString();
            lblTotalExpense.Text = "₹" + totalExpense.ToString();
            lblCurrentBalance.Text = "₹" + currentBalance.ToString();
        }
    }
}