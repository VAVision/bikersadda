<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>BikersAdda</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script>
        setTimeout(function () {
            $('.alert').fadeOut('fast');
        }, 500);
        $(document).ready(function () {
            window.history.pushState(null, "", window.location.href);
            window.onpopstate = function () {
                window.history.pushState(null, "", window.location.href);
            };
        });
    </script>
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
    </style>
</head>
<body style="background-color: #D7BDE2;">
    <form id="form1" runat="server">
        <div class="container">
            <h1 align="center">BikersAdda</h1>
        </div>
        <div class="split left" style="position:center">

            <div class="slideshow-container">
                <div class="mySlides1">
                    <img src="Images/Aqa_black.jpg" style="width:100%"/>
                </div>

                <div class="mySlides1">
                    <img src="Images/bike_light.jpg" style="width:100%"/>
                </div>

                <div class="mySlides1">
                    <img src="Images/duke-wallpaper.jpg" style="width:100%"/>
                </div>

                <div class="mySlides1">
                    <img src="Images/duke1.jpg" style="width:100%"/>
                </div>

                <div class="mySlides1">
                    <img src="Images/Ktm_oldBg.jpg" style="width:100%"/>
                </div>

                <a class="prev" onclick="plusSlides(-1, 0)">&#10094;</a>
                <a class="next" onclick="plusSlides(1, 0)">&#10095;</a>
            </div>
            <script>
                var slideIndex = [1, 1];
                var slideId = ["mySlides1", "mySlides2"]
                showSlides(1, 0);
                showSlides(1, 1);

                function plusSlides(n, no) {
                    showSlides(slideIndex[no] += n, no);
                }

                function showSlides(n, no) {
                    var i;
                    var x = document.getElementsByClassName(slideId[no]);
                    if (n > x.length) {
                        slideIndex[no] = 1
                    }
                    if (n < 1) {
                        slideIndex[no] = x.length
                    }
                    for (i = 0; i < x.length; i++) {
                        x[i].style.display = "none";
                    }
                    x[slideIndex[no] - 1].style.display = "block";
                }
            </script>
        </div>
        <div class="split right">

            <h2 align="center">Login Form</h2>

            <div class="container">
                <label for="uname"><b>Email:</b></label>&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator runat="server" id="reqName" controltovalidate="name" errormessage="Please enter your name" />
                <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="name" ErrorMessage="Invalid Email"></asp:RegularExpressionValidator>
                <asp:TextBox type="text" id="name" placeholder="Enter Email" runat="server" name="uname" />
                
                <label for="psw"><b>Password:</b></label>&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator1" controltovalidate="pwd" errormessage="Please enter your Password" />
                <asp:TextBox type="password" id="pwd" placeholder="Enter Password" name="psw" runat="server" />
                
                
                <br />
                <br />
                <asp:Button ID="Button2" runat="server" style="background-color: #66FF33; line-height: 10px; outline-width:50px; padding: inherit; font-style: normal; font-variant: normal; color: #000000" Text="Submit" Width="160px" OnClick="Button2_Click" />
                <span class="psw"> <a href="forgetpassword.aspx" style="color:blue">Forget Password????</a></span><br />
                <span class="psw">Need an account? <a href="Register.aspx" style="color:blue">Sign up</a></span>
                
            </div>

        </div>
    </form>
</body>
</html>