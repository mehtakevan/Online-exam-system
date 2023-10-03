
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Result.aspx.cs" Inherits="project.Result" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Result</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            text-align: center;
        }
        .container {
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }
        h1 {
            color: #333;
        }
        #ScoreLabel {
            font-size: 24px;
            color: #007bff;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Your Score Is</h1> <h1><%= Score %></h1>
            <h4>Correct answer = <%= AnswerCorrect %> </h4>
            <h4>InCorrect answer = <%= AnswerIncorrect %> </h4>
            <h4>Not answer = <%= AnswerNot %> </h4>
            <h4>Time Taken = <%= Time %> </h4>
            <asp:Button runat="server" Text="LogOut" ID="btnlogout" OnClick="logout"></asp:Button><br /><br />
        </div>
    </form>
</body>
</html>
