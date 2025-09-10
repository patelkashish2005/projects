<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="BudgetTracker.RegisterForm" %>
<%@ Register Src="~/NavigationPanel.ascx" TagName="NavigationPanel" TagPrefix="NP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Page</title>
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
        #container {
            width: 350px; /* Adjusted width */
            padding: 40px;
            background-color: #fff;
            border-radius: 20px;
            box-shadow: 0 0 20px rgba(0,0,0,0.1);
            animation: fadeIn 0.5s ease;
        }
        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(-20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
        h2 {
            color: #333;
            text-align: center;
            margin-bottom: 20px;
        }
        .form-group {
            margin-bottom: 20px;
        }
        input[type="text"], input[type="password"], input[type="email"] {
            width: calc(100% - 22px);
            padding: 12px 10px;
            border: 1px solid #ccc;
            border-radius: 8px;
            box-sizing: border-box;
            transition: border-color 0.3s ease;
        }
        input[type="text"]:focus, input[type="password"]:focus, input[type="email"]:focus {
            border-color: #4CAF50;
        }
        .btn {
            padding: 12px 24px;
            background: linear-gradient(to bottom right, #4CAF50, #388E3C);
            color: white;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: all 0.3s ease;
            width: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            position: relative;
            overflow: hidden;
        }
        .btn::before {
            content: "";
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 300%;
            height: 300%;
            background: rgba(255, 255, 255, 0.1);
            border-radius: 50%;
            transition: all 0.3s ease;
            z-index: 0;
        }
        .btn:hover::before {
            width: 0;
            height: 0;
        }
        .btn:hover {
            transform: scale(1.05);
            box-shadow: 0 0 15px rgba(0,0,0,0.2);
        }
        .login-link {
            text-align: center;
            margin-top: 20px;
        }
        .login-link a {
            color: #4CAF50;
            text-decoration: none;
            transition: color 0.3s ease;
        }
        .login-link a:hover {
            color: #388E3C;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <NP:NavigationPanel ID="NavPan" runat="Server" />
        <div id="container">
            <h2>Registration</h2>
            <div class="form-group">
                <input type="text" ID="txtUsername" runat="server" placeholder="Username" />
            </div>
            <div class="form-group">
                <input type="password" ID="txtPassword" runat="server" placeholder="Password" />
            </div>
            <div class="form-group">
                <input type="email" ID="txtEmail" runat="server" placeholder="Email" />
            </div>
            <div class="form-group">
                <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" CssClass="btn" />
            </div>
            <div class="login-link">
                Already have an account? <a href="Login.aspx">Login here</a>
            </div>
        </div>
    </form>
</body>
</html>
