<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentsignUp.aspx.cs" Inherits="project.studentsignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
    background-size: cover; 
    background-repeat: no-repeat; 
    background-attachment: fixed; 
   
        }
form {
    width: 500px;
    height: 200px; 
    margin: 300px auto; 
    padding: 20px;
    background-color: rgba(139, 69, 19, 0.5);
    border: 4px solid black;
    border-radius: 5px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    text-align: center; 
}

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
                margin-left: 100px;
            }
btnRegister{
    margin-left:100px;
}
            </style>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <h1>Register as Student</h1>
            <tr>
                <td class="auto-style2">Name</td>
                <td>
                    <asp:TextBox ID="tbName" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbName" ErrorMessage="Name is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Email</td>
                <td>
                    <asp:TextBox ID="tbEmail" runat="server" TextMode="Email"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbEmail" ErrorMessage="Email is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
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
                    <asp:TextBox ID="tbPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" runat="server" ControlToValidate="tbPassword" ErrorMessage="Password is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnRegister" runat="server" Text="Register" Width="65px" OnClick="btnregistr_Click" />
                </td>
                <td>&nbsp;
                                    </td>
            </tr>
        </table>
    </form>
</body>
</html>
