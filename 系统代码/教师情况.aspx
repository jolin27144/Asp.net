<%@ Page Language="C#" AutoEventWireup="true" CodeFile="教师情况.aspx.cs" Inherits="教师情况" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>教师情况</title>
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
                    教师编号：&nbsp;&nbsp;&nbsp; 
                    <asp:TextBox ID="教师编号" runat="server" BackColor="#CCCCCC"></asp:TextBox>
                    <br />
                    <br />
                    姓名：&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="姓名" runat="server" BackColor="#CCCCCC"></asp:TextBox>
                    <br />
                    <br />
                    性别：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="性别" runat="server" BackColor="#CCCCCC"></asp:TextBox>
                    <br />
                    <br />
                    职称：&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="职称" runat="server" BackColor="#CCCCCC"></asp:TextBox>
                    <br />
                    <br />
                    记录：<asp:Button ID="首页" runat="server" Text="|◀" Width="23px" />
&nbsp;<asp:Button ID="上一页" runat="server" Text="◀" Width="23px" />

&nbsp;<asp:Button ID="下一页" runat="server" Text="▶" Width="23px" />
&nbsp;<asp:Button ID="尾页" runat="server" Text="▶|" Width="23px" />
</td>
            </tr>
        </table>

    </form>
</body>
</html>
