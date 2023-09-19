﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="teacherlogin.aspx.cs" Inherits="project.teacherlogin" %>

<!DOCTYPE html>
<script src="https://code.jquery.com/jquery-3.x.x.min.js"></script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Teacher Login</title>
</head>
    <style>
        /* Style for the body element with a background image */
        body {
            background-image: url('https://images.unsplash.com/photo-1593589279419-7da07fd2148d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80'); /* Replace 'exam-background.jpg' with the actual path to your image */
            background-size: cover; /* Cover the entire viewport */
            background-repeat: no-repeat; /* No repeating of the image */
            background-attachment: fixed; /* Fixed background */
            margin: 0; /* Remove default margin */
            padding: 0; /* Remove default padding */
            font-family: Arial, sans-serif; /* Set a font-family */
        }

        /* Style for the table */
       table.auto-style1 {
    width: 50%;
    length: 60%;
    margin: 0 auto; /* Center the table horizontally */
    margin-top: 300px;
    border-collapse: collapse;
    background-color: black; /* Background color with transparency */
    padding: 20px 0; /* Add some padding to the table, with 0 padding at the bottom */
}

        /* Style for table cells with class auto-style2 */
        td.auto-style2 {
            font-weight: bold;
            padding: 5px;
        }

        /* Style for textboxes */
        input[type="text"] {
            width: 100%;
            padding: 5px;
            margin-bottom: 10px;
        }

        /* Style for the Register button */
        #btnSignUp {
            padding: 10px;
            background-color: #007BFF;
            color: #fff;
            text-align:left;
            border:groove;
            cursor: pointer;
        }

        #btnlogin{
            padding: 10px;
            background-color: #007BFF;
            color: #fff;
            text-align:left;
            border:groove;
            cursor: pointer;
        }

        /* Style for the RequiredFieldValidator error message */
        .validator-error {
            text-align:right;
            color: red;
        }
        .auto-style2{
            color: white;
        }
    </style>
<body>
        <div>
        </div>
        <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">UserName</td>
                <td>
                    <asp:TextBox ID="tbUName" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" runat="server" ControlToValidate="tbUName" ErrorMessage="UserName is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Password</td>
                <td>
                    <asp:TextBox ID="tbPassword" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ControlToValidate="tbPassword" ErrorMessage="Password is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="btnlogin" runat="server" Text="Login" Width="65px" OnClick="btnlogin_click" />
                </td>
                <td>
                    <asp:Button ID="btnSignUp" runat="server" Text="SignUp" Width="65px" OnClick="btnsignup_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
