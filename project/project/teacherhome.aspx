<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="teacherhome.aspx.cs" Inherits="project.teacherhome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color:  /**black;*/f4f4f4;
            margin: 0;
            padding: 0;
        }

        form {
            width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border: 5px solid blue;
           
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
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

        input[type="text"],
        input[type="number"],
        select {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        select {
            height: 34px;
        }

        .button-container {
            text-align: center;
            padding-left: 20px;
        }

        .button-container button {
          padding: 10px 20px;
        background-color: aqua ; /* Change the background color to aqua blue */
        color: #fff;
        border: none;
        border-radius: 3px;
        cursor: pointer;

        }

        .button-container button:hover {
            background-color: #0056b3;
        }
    </style>
<body>
    <form id="form1" runat="server">
        <div>
            <h1> Creating Test </h1>
            <asp:DropDownList runat="server" ID="ddstd" AutoPostBack="true" OnSelectedIndexChanged="fsubjectselect">
                <asp:ListItem>Select standard</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
            </asp:DropDownList><br />
            <asp:DropDownList runat="server" ID="ddsub">
                <asp:ListItem>Select subject</asp:ListItem>
            </asp:DropDownList><br />


            <asp:Label>Q1)</asp:Label>
            <asp:TextBox ID="tbQ1" runat="server"></asp:TextBox><br /><br />
            <asp:Label>Option A:</asp:Label>
            <asp:TextBox ID="Tbopaq1" runat="server"></asp:TextBox><br />
            <asp:Label>Option B:</asp:Label>
            <asp:TextBox ID="Tbopbq1" runat="server"></asp:TextBox><br />
            <asp:Label>Option C:</asp:Label>
            <asp:TextBox ID="Tbopcq1" runat="server"></asp:TextBox><br />
            <asp:Label>Option D:</asp:Label>
            <asp:TextBox ID="Tbopdq1" runat="server"></asp:TextBox><br /><br />
            <asp:DropDownList runat="server" ID="ddans1">
                <asp:ListItem>Select Answer</asp:ListItem>
                <asp:ListItem>OptionA</asp:ListItem>
                <asp:ListItem>OptionB</asp:ListItem>
                <asp:ListItem>OptionC</asp:ListItem>
                <asp:ListItem>OptionD</asp:ListItem>
            </asp:DropDownList><br /><br />
            <asp:Label>Marks:</asp:Label>
            <asp:TextBox ID="tbm1" runat="server"></asp:TextBox><br />
            <asp:Label>Negative Marks</asp:Label>
            <asp:TextBox ID="tbnegm1" runat="server"></asp:TextBox><br /><br />


            <asp:Label>Q2)</asp:Label>
            <asp:TextBox ID="tbQ2" runat="server"></asp:TextBox><br /><br />
            <asp:Label>Option A:</asp:Label>
            <asp:TextBox ID="Tbopaq2" runat="server"></asp:TextBox><br />
            <asp:Label>Option B:</asp:Label>
            <asp:TextBox ID="Tbopbq2" runat="server"></asp:TextBox><br />
            <asp:Label>Option C:</asp:Label>
            <asp:TextBox ID="Tbopcq2" runat="server"></asp:TextBox><br />
            <asp:Label>Option D:</asp:Label>
            <asp:TextBox ID="Tbopdq2" runat="server"></asp:TextBox><br /><br />
            <asp:DropDownList runat="server" ID="ddans2">
                <asp:ListItem>Select Answer</asp:ListItem>
                <asp:ListItem>OptionA</asp:ListItem>
                <asp:ListItem>OptionB</asp:ListItem>
                <asp:ListItem>OptionC</asp:ListItem>
                <asp:ListItem>OptionD</asp:ListItem>
            </asp:DropDownList><br /><br />
            <asp:Label>Marks:</asp:Label>
            <asp:TextBox ID="tbm2" runat="server"></asp:TextBox><br />
            <asp:Label>Negative Marks</asp:Label>
            <asp:TextBox ID="tbnegm2" runat="server"></asp:TextBox><br /><br />
            

            <asp:Label>Q3)</asp:Label>
            <asp:TextBox ID="tbQ3" runat="server"></asp:TextBox><br /><br />
            <asp:Label>Option A:</asp:Label>
            <asp:TextBox ID="Tbopaq3" runat="server"></asp:TextBox><br />
            <asp:Label>Option B:</asp:Label>
            <asp:TextBox ID="Tbopbq3" runat="server"></asp:TextBox><br />
            <asp:Label>Option C:</asp:Label>
            <asp:TextBox ID="Tbopcq3" runat="server"></asp:TextBox><br />
            <asp:Label>Option D:</asp:Label>
            <asp:TextBox ID="Tbopdq3" runat="server"></asp:TextBox><br /><br />
            <asp:DropDownList runat="server" ID="ddans3">
                <asp:ListItem>Select Answer</asp:ListItem>
                <asp:ListItem>OptionA</asp:ListItem>
                <asp:ListItem>OptionB</asp:ListItem>
                <asp:ListItem>OptionC</asp:ListItem>
                <asp:ListItem>OptionD</asp:ListItem>
            </asp:DropDownList><br /><br />
            <asp:Label>Marks:</asp:Label>
            <asp:TextBox ID="tbm3" runat="server"></asp:TextBox><br />
            <asp:Label>Negative Marks</asp:Label>
            <asp:TextBox ID="tbnegm3" runat="server"></asp:TextBox><br /><br />


            <asp:Label>Q4)</asp:Label>
            <asp:TextBox ID="tbQ4" runat="server"></asp:TextBox><br /><br />
            <asp:Label>Option A:</asp:Label>
            <asp:TextBox ID="Tbopaq4" runat="server"></asp:TextBox><br />
            <asp:Label>Option B:</asp:Label>
            <asp:TextBox ID="Tbopbq4" runat="server"></asp:TextBox><br />
            <asp:Label>Option C:</asp:Label>
            <asp:TextBox ID="Tbopcq4" runat="server"></asp:TextBox><br />
            <asp:Label>Option D:</asp:Label>
            <asp:TextBox ID="Tbopdq4" runat="server"></asp:TextBox><br /><br />
            <asp:DropDownList runat="server" ID="ddans4">
                <asp:ListItem>Select Answer</asp:ListItem>
                <asp:ListItem>OptionA</asp:ListItem>
                <asp:ListItem>OptionB</asp:ListItem>
                <asp:ListItem>OptionC</asp:ListItem>
                <asp:ListItem>OptionD</asp:ListItem>
            </asp:DropDownList><br /><br />
            <asp:Label>Marks:</asp:Label>
            <asp:TextBox ID="tbm4" runat="server"></asp:TextBox><br />
            <asp:Label>Negative Marks</asp:Label>
            <asp:TextBox ID="tbnegm4" runat="server"></asp:TextBox><br /><br />


            <asp:Label>Q5)</asp:Label>
            <asp:TextBox ID="TbQ5" runat="server"></asp:TextBox><br /><br />
            <asp:Label>Option A:</asp:Label>
            <asp:TextBox ID="Tbopaq5" runat="server"></asp:TextBox><br />
            <asp:Label>Option B:</asp:Label>
            <asp:TextBox ID="Tbopbq5" runat="server"></asp:TextBox><br />
            <asp:Label>Option C:</asp:Label>
            <asp:TextBox ID="Tbopcq5" runat="server"></asp:TextBox><br />
            <asp:Label>Option D:</asp:Label>
            <asp:TextBox ID="Tbopdq5" runat="server"></asp:TextBox><br /><br />
            <asp:DropDownList runat="server" ID="ddans5">
                <asp:ListItem>Select Answer</asp:ListItem>
                <asp:ListItem>OptionA</asp:ListItem>
                <asp:ListItem>OptionB</asp:ListItem>
                <asp:ListItem>OptionC</asp:ListItem>
                <asp:ListItem>OptionD</asp:ListItem>
            </asp:DropDownList><br /><br />
            <asp:Label>Marks:</asp:Label>
            <asp:TextBox ID="tbm5" runat="server"></asp:TextBox><br />
            <asp:Label>Negative Marks</asp:Label>
            <asp:TextBox ID="tbnegm5" runat="server"></asp:TextBox><br /><br />

            <asp:Button runat="server" Text="Submit" ID="btnsubmit" OnClick="btnsubmit_click"></asp:Button><br /><br />
        </div>
        <div>&nbsp;</div>
    
    </form>
</body>
</html>