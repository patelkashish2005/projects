<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="NavigationPanel.ascx.cs" Inherits="BudgetTracker.WebUserControl1" %>
<style type="text/css">
    .navigation-bar {
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        background: linear-gradient(to right, #00bfff, #0077b3);
        padding: 10px 0;
        z-index: 1000;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }

    .container {
        max-width: 1200px;
        margin: 0 auto;
        padding: 0 20px;
        display: flex;
        align-items: center;
        justify-content: space-between;
    }

    .logo {
        color: #fff;
        font-size: 28px;
        font-weight: bold;
        text-decoration: none;
        margin-right: 20px;
        display: flex;
        align-items: center;
    }

    .logo:before {
        content: "";
        display: inline-block;
        width: 40px;
        height: 40px;
        margin-right: 10px;
        border-radius: 50%;
    }

    .navigation-menu {
        list-style-type: none;
        margin: 0;
        padding: 0;
        display: flex;
    }

    .navigation-menu li {
        margin-left: 20px;
    }

    .navigation-menu li a {
        color: #fff;
        text-decoration: none;
        font-size: 18px;
        transition: color 0.3s ease;
        padding: 15px 20px;
        border-radius: 5px;
    }

    .navigation-menu li a:hover {
        background-color: rgba(255, 255, 255, 0.2);
        color: #fff;
    }

    .login-signup a {
        color: #fff;
        text-decoration: none;
        font-size: 18px;
        padding: 15px 20px;
        border-radius: 5px;
        transition: background-color 0.3s ease;
        margin-left: 20px;
    }

    .login-signup a:hover {
        background-color: rgba(255, 255, 255, 0.2);
        color: #fff;
    }
</style>

<div class="navigation-bar">
    <div class="container">
        <a href="#" class="logo">BudgetTracker</a>
        <ul class="navigation-menu">
            <li><a href="Home.aspx">Home</a></li>
            <li><a href="Dashboard.aspx">Dashboard</a></li>
            <li><a href="Help.aspx">Help</a></li>
            <li><a href="Feedback.aspx">Feedback</a></li>
        </ul>
        <div class="login-signup">
            <a href="Login.aspx">Login</a>
            <a href="Registration.aspx">Sign Up</a>
        </div>
    </div>
</div>