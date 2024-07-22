<%@ Page Title="" Language="C#" MasterPageFile="~/Main_Master.master" AutoEventWireup="true" CodeFile="Help.aspx.cs" Inherits="Help" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Internet Banking Help</title>
<style>
   

    .container {
        padding: 20px;
        border-radius: 8px;
        margin: 40px;
        padding: 0;
        height:auto;
        width:auto;
    }

    h1 {
        color: #333;
        padding-bottom:15px;
    }
    h2 {
        color: #333;
        padding-bottom:15px;
    }
    p {
        line-height: 1.6;
        color: #666;
        padding-bottom:15px;
    }

    button {
        padding: 10px 20px;
        background-color: #007BFF;
        border: none;
        border-radius: 4px;
        color: #fff;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    button:hover {
        background-color: #0056b3;
    }
    main {
    padding: 20px;
}

section {
    margin-bottom: 20px;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container">
    <h1>Net Banking Help</h1>
    <p>Welcome to our Net Banking Help page. Here you can find answers to common questions and troubleshoot common issues.</p>

    <h2>Frequently Asked Questions (FAQs)</h2>
    <ul>
        <li><strong>How do I reset my password?</strong> - To reset your password, go to the login page and click on 'Forgot Password'. Follow the instructions to reset it.</li>
        <li><strong>How do I transfer money?</strong> - To transfer money, go to the 'Transfer Funds' section and enter the recipient's details and amount to transfer.</li>
        <!-- Add more FAQs as needed -->
    </ul>

    <h2>Contact Us</h2>
    <p>If you still have questions or need further assistance, please contact our support team.</p>
    <main>
        <section id="faq">
            <h2>Frequently Asked Questions</h2>
            <ul>
                <li><a href="#login-issues">Having trouble logging in?</a></li>
                <li><a href="#transfers">How do I transfer funds?</a></li>
                <li><a href="#payments">How do I pay bills?</a></li>
                </ul>
        </section>
        <section id="login-issues">
            <h2>Login Issues</h2>
            <p>If you're having trouble logging in, please check the following:</p>
            <ul>
                <li>Your username and password are correct.</li>
                <li>Your account is not locked.</li>
                <li>You're using the correct website address.</li>
            </ul>
            <p>If you still can't log in, please contact customer support.</p>
        </section>
        </main>
    <footer>
        <p>&copy; 2024 Your Bank Name</p>
    </footer>
    <button onclick="contactSupport()">Contact Support</button>
</div>

<script>
    function contactSupport() {
        alert('Please contact our support team at support@bank.com for assistance.');
    }
</script>
</asp:Content>

