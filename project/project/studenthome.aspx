<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studenthome.aspx.cs" Inherits="project.studenthome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
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
