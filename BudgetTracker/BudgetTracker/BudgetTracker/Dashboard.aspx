<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="BudgetTracker.HomePage" %>
<%@ Register Src="~/NavigationPanel.ascx" TagName="NavigationPanel" TagPrefix="NP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Budget Tracker</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <style type="text/css">
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
            background-size: cover;
            background-repeat: no-repeat;
        }
        #container {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        h1, h3 {
            color: #333;
            text-align: center;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        .form-group {
            margin-bottom: 20px;
        }
        .btn {
            padding: 10px 20px;
            background-color: #28a745;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .btn:hover {
            background-color: #0056b3;
        }
        .totals-container {
            float: right;
            margin-top: 20px;
            margin-right: 20px;
            width: 333px;
        }
        .totals-container h3 {
            color: #333;
            text-align: center;
        }
        .totals-container label {
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
        }
        input[type="text"], input[type="date"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        th {
            padding: 15px;
            background-color: #6c757d;
            color: #fff;
        }
        #income-section {
            background-color: #d4edda; 
            color: #155724; 
            padding: 20px;
            border-radius: 8px;
        }
        #expense-section {
        background-color: #f8d7da; 
        color: #721c24; 
        padding: 20px;
        border-radius: 8px;
    }
        .auto-style1 {
            height: 40px;
        }
        .auto-style2 {
            height: 50px;
        }
        .auto-style4 {
            height: 40px;
            width: 164px;
        }
        .income-totals {
            background-color: #c3e6cb;
            padding: 10px;
            border-radius: 5px;
            margin-bottom: 10px;
        }
        .expense-totals {
            background-color: #f4c7c7;
            padding: 10px;
            border-radius: 5px;
            margin-bottom: 10px;
        }
        .balance-totals {
            background-color: #95b9c7;
            padding: 10px;
            border-radius: 5px;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <NP:NavigationPanel ID="NavPan" runat="Server" />
         <div id="container">
            <div class="jumbotron">
                <h1 class="display-4">Budget Tracker</h1>
            </div>
             <div class="form-group">
               <center><label for="TextBox1">Date(DD-MM-YYYY):</label>
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Date" required></asp:TextBox></center> 
            </div>
            <div class="row">
                <div class="col-md-6" id="income-section">
                    <h3>Income Section</h3>
                    <div class="form-group">
                        <label for="TextBox2">Income:</label>
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                        <br />
                        <center><asp:Button ID="btn_income" runat="server" Text="Add Income" OnClick="Button1_Click" CssClass="btn btn-primary" /></center>
                    </div>
                </div>
                <div class="col-md-6" id="expense-section">
                    <h3>Expense Section</h3>
                    <div class="form-group">
                        <label for="TextBox3">Expense Name:</label>
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                        <label for="TextBox4">
                        Category:</label>
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
                        <label for="TextBox5">
                        Amount:</label>
                        <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <center><asp:Button ID="btn_expense" runat="server" Text="Add Expense" OnClick="btn_expense_Click" CssClass="btn btn-primary" /></center>
                </div>
            </div>
            <table class="table">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="Date" HeaderText="Date" />
                        <asp:BoundField DataField="Income" HeaderText="Income" />
                        <asp:BoundField DataField="ExpenseName" HeaderText="Expense Name" />
                        <asp:BoundField DataField="Category" HeaderText="Category" />
                        <asp:BoundField DataField="Amount" HeaderText="Amount" />
                    </Columns>
                </asp:GridView>
            </table>
            <div class="totals-container">
                <div class="income-totals">
                    <h3>Total Income:</h3>
                    <center><asp:Label ID="lblTotalIncome" runat="server" Text=""></asp:Label></center>
                </div>
                <div class="expense-totals">
                    <h3>Total Expense:</h3>
                    <center><asp:Label ID="lblTotalExpense" runat="server" Text=""></asp:Label></center>
                </div>
                <div class="balance-totals">
                    <h3>Current Balance: </h3>
                    <center><asp:Label ID="lblCurrentBalance" runat="server" Text=""></asp:Label></center>
                </div>
            </div>
        </div>
    </form>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>
