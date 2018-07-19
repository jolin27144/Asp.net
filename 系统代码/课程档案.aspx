<%@ Page Language="C#" AutoEventWireup="true" CodeFile="课程档案.aspx.cs" Inherits="课程档案" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>课程档案</title>
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
                    课程代号：&nbsp;
                    <asp:TextBox ID="课程代号" runat="server" BackColor="#CCCCCC"></asp:TextBox>
                    <br />
                    <br />
                    课程名称：&nbsp;
                    <asp:TextBox ID="课程名称" runat="server" BackColor="#CCCCCC"></asp:TextBox>
                    <br />
                    <br />
                    类别：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="类别" runat="server" BackColor="#CCCCCC"></asp:TextBox>
                    <br />
                    <br />
                    考核方式：&nbsp; <asp:TextBox ID="考核方式" runat="server" BackColor="#CCCCCC"></asp:TextBox>
                    <br />
                    <br />
                    学分：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    <asp:TextBox ID="学分" runat="server" BackColor="#CCCCCC"></asp:TextBox>
                    <br />
                    <br />
                    备注：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="备注" runat="server" BackColor="#CCCCCC"></asp:TextBox>
                    <br />
                    <br /> 
                    记录：<asp:Button ID="首页" runat="server" Text="|◀" Width="23px" />
&nbsp;<asp:Button ID="上一页" runat="server" Text="◀" Width="23px" />

&nbsp;<asp:Button ID="下一页" runat="server" Text="▶" Width="23px" />
&nbsp;<asp:Button ID="尾页" runat="server" Text="▶|" Width="23px" />
                    <br />
&nbsp;</td>
            </tr>
        </table>

    </form>
</body>
</html>
