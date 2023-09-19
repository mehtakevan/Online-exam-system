<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TeacherReport.aspx.cs" Inherits="project.TeacherReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
     <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        form {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border: 2px solid #007BFF; /* Blue border around the form */
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            margin-top: 50px;
        }

        h1 {
            text-align: center;
            color: #333;
        }

        label {
            display: inline-block;
            width: 100px;
            font-weight: bold;
        }

        select,
        button {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        select {
            height: 34px;
        }

        button {
            background-color: #007BFF;
            color: #fff;
            border: none;
            cursor: pointer;
        }

        button:hover {
            background-color: #0056b3;
        }

        /* Style for the GridView (optional) */
        #GridViewReport {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        #GridViewReport th, #GridViewReport td {
            padding: 8px;
            border: 1px solid #ddd;
            text-align: center;
        }

        #GridViewReport th {
            background-color: #007BFF;
            color: #fff;
        }
    </style>
<body>
    <h1> Result Portal </h1>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList runat="server" ID="ddstd" AutoPostBack="true" OnSelectedIndexChanged="fsubjectselect">
                <asp:ListItem>Select standard</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
            </asp:DropDownList><br />
            <asp:DropDownList runat="server" ID="ddsub">
                <asp:ListItem>Select subject</asp:ListItem>
            </asp:DropDownList><br />

            <asp:Button ID="SeeReport" runat="server" Text="See Perfomance" Width="150px" OnClick="btnreport_click" />
            <br />
            <br />
            <asp:GridView ID="GridViewReport" runat="server">

            </asp:GridView>

        </div>
    </form>
</body>
</html>
