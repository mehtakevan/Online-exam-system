<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studenthome.aspx.cs" Inherits="project.studenthome" %>

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
        margin-top: 70px;
        margin-left: 360px;
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
        <h1>Time For Test</h1>
        <div>
            <asp:DropDownList runat="server" ID="ddstd" AutoPostBack="true" OnSelectedIndexChanged="fsubjectselect">
                <asp:ListItem>Select standard</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
            </asp:DropDownList><br />
            <asp:DropDownList runat="server" ID="ddsub">
                <asp:ListItem>Select subject</asp:ListItem>
            </asp:DropDownList><br />
            <asp:Button runat="server" Text="Display Questions" ID="btnsubmit" OnClick="btnsubmit_click"></asp:Button><br /><br />
            
            <asp:Repeater ID="QuestionsRepeater" runat="server">
            <ItemTemplate>
                <div>
                   Question <%# Container.ItemIndex + 1 %>) <%# Eval("QuestionText") %>
                    <asp:RadioButtonList ID="OptionsRadioButtonList" runat="server"
                        DataSource='<%# Eval("Options") %>' RepeatDirection="Vertical">
                    </asp:RadioButtonList>
                    Marks: <%# Eval("Marks") %>    Negative Marks: <%# Eval("NegativeMarks") %><br /><br /> 
                </div>
                </ItemTemplate>
            </asp:Repeater>
            <asp:Button runat="server" Text="Let's Evaluate" ID="btnevaluate" OnClick="btnevaluate_click"></asp:Button><br /><br />
        </div>
    </form>
</body>
</html>