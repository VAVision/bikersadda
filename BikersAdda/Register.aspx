<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>BikersAdda</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script>
        setTimeout(function() {
            $('.alert').fadeOut('fast');
        }, 500);
    </script>
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
        }
            
        * {
            box-sizing: border-box;
        }
            
        input[type=text],
        input[type=password] select,
        .inputbox,
        textarea {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            margin-top: 6px;
            margin-bottom: 16px;
            resize: vertical;
        }
            
        input[type=submit] {
            background-color: #4CAF50;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
            
        input[type=submit]:hover {
            background-color: #45a049;
        }
            
        .container {
            border-radius: 5px;
            background-color: #f2f2f2;
            padding: 20px;
        }
    </style>
</head>

<body style="background-color: #D7BDE2;">
    <form id="form1" runat="server">
        <div>
            <h1 align="center" style="padding-top:10px;font-weight: bold;">Sign Up</h1>
            <h4 style="font-family: 'Comic Sans MS'; color: black; font-style: italic; font-weight: bold; margin-left: 40px;"><a href="home.aspx"><< Go Back</h4></a>
            <div class="container" style="background-color: #D6DBDF;">
                <label for="fname">Name: <b style="color: #0000FF">*</b></label>&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator runat="server" id="reqName" controltovalidate="fname" errormessage="Please enter your name" />
                <asp:TextBox runat="server" type="text" id="fname" name="firstname" placeholder="Enter Your name" />
                <label for="lname">E-Mail: <b style="color: #0000FF">*</b></label>&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator1" controltovalidate="email" errormessage="Please enter your EmailID" />
                <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="email" ErrorMessage="Invalid Email"></asp:RegularExpressionValidator>
                <asp:TextBox runat="server" type="text" id="email" name="email" placeholder="Enter Your E-Mail" />
                <label for="contact">Contact: <b style="color: #0000FF">*</b></label>&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator2" controltovalidate="contact" errormessage="Please enter your Contact Number" />
                <asp:TextBox runat="server" type="text" id="contact" name="contact" placeholder="Enter Your Contact Number" />
                <label for="psw">Password: <b style="color: #0000FF">*</b></label>&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator3" controltovalidate="psw" errormessage="Please enter your Password" />
                <br/>
                <asp:TextBox runat="server" type="password" id="psw" placeholder="Enter Password" class="inputbox" TextMode="Password" />
                <br/>
                <label for="psw-repeat">Confirm Password: <b style="color: #0000FF">*</b></label>&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator4" controltovalidate="confirmpsw" errormessage="Please enter your Confirm Password" />

                <asp:CompareValidator ID="CompareValidator1" style="float:right" runat="server" ControlToCompare="psw" ControlToValidate="confirmpsw" ErrorMessage="Password Not matched"></asp:CompareValidator>

                <br/>
                <asp:TextBox runat="server" type="password" ID="confirmpsw" placeholder="Confirm Password" class="inputbox" TextMode="Password" />
                <br/>
                <br/>
                <label for="address">Address: <b style="color: #0000FF">*</b></label>&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator5" controltovalidate="address" errormessage="Please enter your Address" />
                <asp:TextBox runat="server" id="address" name="address" placeholder="Write your address here" style="height:200px" TextMode="MultiLine" />
                <asp:Button ID="Button1" runat="server" style="background-color: #66FF33; line-height: 10px; outline-width:50px; padding: inherit; font-style: normal; font-variant: normal; color: #000000" Text="Register" Height="30px" Width="106px" OnClick="Button1_Click" />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bikersaddaConnectionString1 %>" SelectCommand="SELECT * FROM [userdetail]"></asp:SqlDataSource>
            </div>
        </div>
    </form>
    <div style="height:20px"></div>
</body>

</html>