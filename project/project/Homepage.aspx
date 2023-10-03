<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="project.Homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Questionairre</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('https://images.unsplash.com/photo-1606326608802-164e734c2fd9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            margin: 0;
            padding: 0;
            display: flex; 
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        #buttonContainer {
            display: flex;
            justify-content: space-between; 
            align-items: center; 
        }

        #btnevaluate, #Button1 {
            padding: 15px 20px; 
            background-color: #0077b3; 
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin: 10px; 
        }

        #btnevaluate:hover, #Button1:hover {
            background-color: #0056b3; 
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="buttonContainer">
            <asp:Button runat="server" Text="Let's Take Test" ID="btnevaluate" OnClick="btnteacher_click"></asp:Button>
            <asp:Button runat="server" Text="Ready For Test" ID="Button1" OnClick="btnstudent_click"></asp:Button>
        </div>
    </form>
</body>
</html>
