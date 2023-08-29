<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="project.Login" %>

<!DOCTYPE html>
<script src="https://code.jquery.com/jquery-3.x.x.min.js"></script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
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
