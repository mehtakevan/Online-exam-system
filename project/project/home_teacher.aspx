<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home_teacher.aspx.cs" Inherits="project.home_teacher" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('https://img.freepik.com/free-photo/top-view-copy-space-white-green-blue-paper-clips-with-blue-light-green-pencils-green-background_141793-11774.jpg?w=1060&t=st=1696140547~exp=1696141147~hmac=f32277a6fd45a6db770e3bf2b65fec0c5983fe5167756e343b053ddf2b73bf3f');
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
            background-color: black; 
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
        <div>
            <asp:Button runat="server" Text="Upload Questions" ID="btnevaluate" OnClick="btnuq_click"></asp:Button>
            <asp:Button runat="server" Text="See Report" ID="Button1" OnClick="btnreport_click"></asp:Button>
        </div>
    </form>
</body>
</html>
