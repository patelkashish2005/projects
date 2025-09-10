<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="BudgetTracker.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <style type="text/css">
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            text-align: center;
        }
        .logo {
            max-width: 200px;
            margin-bottom: 30px;
        }
        .welcome {
            font-size: 24px;
            color: #333;
            margin-bottom: 20px;
        }
        .actions {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-wrap: wrap;
            margin-top: 20px;
        }
        .btn {
            display: inline-block;
            padding: 12px 24px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            text-decoration: none;
            margin: 0 10px 10px 0;
        }
        .btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <img src="logo.png" alt="Budget Tracker Logo" class="logo" />
            <div class="welcome">Welcome to Budget Tracker</div>
            <p>Start managing your finances efficiently with Budget Tracker. Keep track of your income, expenses, and savings effortlessly.</p>
            <div class="actions">
                <a href="Login.aspx" class="btn">Login</a>
                <a href="Registration.aspx" class="btn">Register</a>
                <a href="Dashboard.aspx" class="btn">Go to Dashboard</a>
                <a href="Help.aspx" class="btn">Help/FAQ</a>
                <a href="Feedback.aspx" class="btn">Feedback</a>
            </div>
        </div>
    </form>
</body>
</html>
