<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TeacherReport.aspx.cs" Inherits="project.TeacherReport" %>

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

            <asp:Button ID="SeeReport" runat="server" Text="See Perfomance" Width="150px" OnClick="btnreport_click" />
            <br />
            <br />
            <asp:GridView ID="GridViewReport" runat="server">

            </asp:GridView>

        </div>
    </form>
</body>
</html>
