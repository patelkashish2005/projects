<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Help.aspx.cs" Inherits="BudgetTracker.Help" %>
<%@ Register Src="~/NavigationPanel.ascx" TagName="NavigationPanel" TagPrefix="NP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Help/FAQ</title>
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
            position: relative;
            z-index: 1;
            max-width: 600px;
            width: 100%;
            margin: 50px;
            padding: 50px;
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
        .faq-item {
            margin-bottom: 20px;
        }
        .question {
            font-weight: bold;
            color: #007bff;
            margin-bottom: 5px;
        }
        .answer {
            color: #555;
            margin-left: 20px;
            padding-left: 10px;
            border-left: 2px solid #007bff;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <NP:NavigationPanel ID="NavPan" runat="Server" />
        <div id="container">
            <h2>Help/FAQ</h2>
            <div class="faq-item">
                <div class="question">How do I add an income?</div>
                <div class="answer">To add an income, navigate to the Income Section on the homepage and enter the income amount in the provided field. Then, click the "Add Income" button.</div>
            </div>
            <div class="faq-item">
                <div class="question">How do I add an expense?</div>
                <div class="answer">To add an expense, go to the Expense Section on the homepage and enter the expense details (name, category, amount) in the provided fields. Then, click the "Add Expense" button.</div>
            </div>
            <div class="faq-item">
                <div class="question">How can I view my transaction history?</div>
                <div class="answer">You can view your transaction history on the homepage under the Recent Transactions section. It displays a list of your most recent income and expense transactions.</div>
            </div>
            <div class="faq-item">
                <div class="question">Is my data secure?</div>
                <div class="answer">Yes, we take the security of your data seriously. Our application employs various security measures to protect your personal and financial information. We use encryption, secure connections, and adhere to industry best practices to ensure the confidentiality and integrity of your data.</div>
            </div>
            <div class="faq-item">
                <div class="question">How can I reset my password?</div>
                <div class="answer">If you forget your password, you can usually find a "Forgot Password" link on the login page. Clicking this link will prompt you to enter your email address, and we will send you instructions on how to reset your password.</div>
            </div>
            <div class="faq-item">
                <div class="question">Can I export my transaction data?</div>
                <div class="answer">Yes, you can usually export your transaction data in various formats such as CSV or Excel. Look for an option in the application settings or dashboard that allows you to export your data. This feature enables you to analyze your financial information in other tools or share it with your accountant.</div>
            </div>
        </div>
    </form>
</body>
</html>

