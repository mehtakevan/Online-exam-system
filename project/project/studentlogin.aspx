<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentlogin.aspx.cs" Inherits="project.studentlogin" %>

<!DOCTYPE html>
<script src="https://code.jquery.com/jquery-3.x.x.min.js"></script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Teacher Login</title>
</head>
    <style>
        html, body {
    height: 100%;
    margin: 0;
    padding: 0;
}
        body {
              font-family: Arial, sans-serif;
    background-image: url('https://images.unsplash.com/photo-1488190211105-8b0e65b80b4e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80');
    background-size: cover; /* Scale the background image to cover the entire viewport */
    background-repeat: no-repeat; /* Prevent background image from repeating */
    background-attachment: fixed; /* Fixed background position */
   
        }
form {
    width: 500px;
    height: 180px; /* Increase the height as needed */
    margin: 300px auto; /* Center the form horizontally and adjust margin-top accordingly */
    padding: 20px;
    background-color: rgba(139, 69, 19, 0.5);
    border: 4px solid black;
    border-radius: 5px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    text-align: center; /* Center-align the content inside the form */
}

/* Center-align the text fields and buttons inside the form */
table {
    width: 100%;
    text-align: center;
    margin-top: 10px;
}

.auto-style2 {
    width: 30%;
    text-align: right;
    padding-right: 10px;
    vertical-align: top;
    font-size: 20px;
}

.auto-style3 {
    padding-left: 10px;   
    vertical-align: top;
}

.auto-style4 {
    text-align: center;
}

.auto-style5 {
    text-align: center;
    margin-top: 20px;
}

.auto-style6 {
    width: 100%;
    text-align: center;
}

.auto-style7 {
    margin-top: 10px;
}

.auto-style8 {
    background-color: #007BFF;
    color: #fff;
    border: none;
    padding: 5px 20px;
    border-radius: 3px;
    cursor: pointer;
}

.auto-style8:hover {
    background-color: #0056b3;
}

.auto-style9 {
    color: Red;
}
    </style>
<body>
        <div>
        </div>
        <form id="form1" runat="server">
        <div>
        </div>
            <h1> Login as Student</h1>
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
