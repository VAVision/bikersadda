<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forgetpassword.aspx.cs" Inherits="forgetpassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>BikersAdda</title>
    <script src="js/bootstrap.min.js"></script>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <style>
        * {
            box-sizing: border-box
        }
        
        .mySlides1,
        .mySlides2 {
            display: none
        }

        img {
            vertical-align: middle;
        }


        /* Slideshow container */

        .slideshow-container {
            height: 100px;
            max-width: 1000px;
            position: relative;
            padding: 10px;
            margin: auto;
        }


        /* Next & previous buttons */

        .prev,
        .next {
            cursor: pointer;
            position: absolute;
            top: 50%;
            width: auto;
            padding: 16px;
            margin-top: -22px;
            color: white;
            font-weight: bold;
            font-size: 18px;
            transition: 0.6s ease;
            border-radius: 0 3px 3px 0;
            user-select: none;
        }

        .split {
            height: 100%;
            width: 50%;
            background-color: #D6DBDF;
            position: fixed;
            z-index: 1;
            top: 0;
            overflow-x: hidden;
            margin-top: 100px;
            padding-top: 20px;
        }

        .left {
            left: 0;
        }

        .right {
            right: 0;
        }


        /* Position the "next button" to the right */

        .next {
            right: 0;
            border-radius: 3px 0 0 3px;
        }


        /* On hover, add a grey background color */

        .prev:hover,
        .next:hover {
            background-color: #f1f1f1;
            color: black;
        }

        body {
            font-family: Arial, Helvetica, sans-serif;
        }

        form {
            border: 3px solid #f1f1f1;
        }

        input[type=text],
        input[type=password] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

        button1 {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
        }

        .text {
            position: absolute;
            top: 90%;
            left: 50%;
            transform: translate(-50%, -50%);
        }

        button1:hover {
            opacity: 0.8;
        }

        .cancelbtn {
            width: auto;
            padding: 10px 18px;
            background-color: #f44336;
        }

        .container {
            padding: 16px;
        }

        span.psw {
            float: right;
            padding-top: 16px;
        }


        /* Change styles for span and cancel button on extra small screens */

        @media screen and (max-width: 300px) {
            span.psw {
                display: block;
                float: none;
            }
            .cancelbtn {
                width: 100%;
            }
        }
        .center {
          margin: auto;
          width: 50%;
          padding: 10px;
        }
    </style>
</head>
<body style="background-color: #D7BDE2;">
    <form id="form1" runat="server">
        <div class="container" style="padding-bottom:80px">
            <h1 align="center">BikersAdda</h1>
        </div>
        <h4 style="font-family: 'Comic Sans MS'; color: black; font-style: italic; font-weight: bold; margin-left: 40px;"><a href="home.aspx"><< Go Back</h4></a>
    <div class="center" style="background-color: #D6DBDF;">
    <h2 align="center">Forget Password</h2>

            <div class="container">
                <label for="uname"><b>Enter your Email ID: </b></label>
                <asp:RequiredFieldValidator runat="server" id="reqName" controltovalidate="email" errormessage="Please enter your name" />
                <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="email" ErrorMessage="Invalid Email"></asp:RegularExpressionValidator>
                <asp:TextBox type="text" id="email" placeholder="Enter Email" runat="server" name="uname" />
                <br />
                <br />
                <asp:Button ID="Button2" runat="server" style="background-color: #66FF33; line-height: 10px; outline-width:50px; padding: inherit; font-style: normal; font-variant: normal; color: #000000" Text="Send My Password" Width="160px" OnClick="Button2_Click"/>
             </div>
        </div>
        <div style="padding-bottom:200px"></div>
        </form>
</body>
</html>
