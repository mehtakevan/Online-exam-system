<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="teachersignUp.aspx.cs" Inherits="project.teachersignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        /* Style for the body element with a background image */
        body {
            background-image: url('https://studentprojectguide.com/wp-content/uploads/2020/07/Online-Exam-Portal.jpeg'); /* Replace 'exam-background.jpg' with the actual path to your image */
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
            margin: 0 auto; /* Center the table horizontally */
            margin-top: 250px;
            border-collapse: collapse;
            background-color: rgba(255, 255, 255, 0.8); /* Background color with transparency */
            padding: 20px; /* Add some padding to the table */
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
        #btnRegister {
            padding: 10px;
            background-color: #007BFF;
            color: #fff;
            text-align:left;
            border:groove;
            cursor: pointer;
        }

        #btnLogin{
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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Name</td>
                <td>
                    <asp:TextBox ID="tbName" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbName" ErrorMessage="Name is Required" ForeColor="Red" CssClass="validator-error"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Email</td>
                <td>
                    <asp:TextBox ID="tbEmail" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbEmail" ErrorMessage="Email is Required" ForeColor="Red" CssClass="validator-error"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">UserName</td>
                <td>
                    <asp:TextBox ID="tbUName" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" runat="server" ControlToValidate="tbUName" ErrorMessage="UserName is Required" ForeColor="Red" CssClass="validator-error"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Password</td>
                <td>
                    <asp:TextBox ID="tbPassword" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ControlToValidate="tbPassword" ErrorMessage="Password is Required" ForeColor="Red" CssClass="validator-error"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnRegister" runat="server" Text="SignUp" Width="65px" OnClick="btnregistr_Click" CssClass="btn-register" />
                </td>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnLogin" runat="server" Text="Login" Width="65px" OnClick="btnlogin_Click" CssClass="btn-register" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
