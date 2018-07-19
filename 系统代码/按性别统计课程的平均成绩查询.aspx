<%@ Page Language="C#" AutoEventWireup="true" CodeFile="按性别统计课程的平均成绩查询.aspx.cs" Inherits="按性别统计课程的平均成绩查询" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>按性别统计课程的平均成绩查询</title>
    <style type="text/css">
        .auto-style1 {
            width: 41%;
            height: 277px;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            text-align: left;
            width: 886px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
      
        <table align="center" border="1" class="auto-style1" >
            <tr class="auto-style2">
                <td class="auto-style3" style="color: #0000FF;">
                    性别：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="性别" runat="server" BackColor="#CCCCCC">
                        <asp:ListItem>男</asp:ListItem>
                        <asp:ListItem>女</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                    课程名称：&nbsp;
                    <asp:TextBox ID="课程名称" runat="server" BackColor="#CCCCCC"></asp:TextBox>
                    <br />
                    <br />
                    平均成绩：&nbsp; <asp:TextBox ID="平均成绩" runat="server" BackColor="#CCCCCC"></asp:TextBox>
                    <br />
                    <br />
                    记录：<asp:Button ID="首页" runat="server" Text="|◀" Width="23px" />
&nbsp;<asp:Button ID="上一页" runat="server" Text="◀" Width="23px" />
&nbsp;
                    <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="下一页" runat="server" Text="▶" Width="23px" />
&nbsp;<asp:Button ID="尾页" runat="server" Text="▶|" Width="23px" />
                    <br />
&nbsp;</td>
            </tr>
        </table>

    </form>
</body>
</html>
