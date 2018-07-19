<%@ Page Language="C#" AutoEventWireup="true" CodeFile="学生成绩查询主窗体.aspx.cs" Inherits="学生成绩查询主窗体" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>学生成绩查询主窗体</title>
    <style type="text/css">
        .auto-style1 {
            width: 56%;
            height: 126px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table border="1" class="auto-style1">
 
                <tr>
                    <td>学号：&nbsp; 
                        <asp:TextBox ID="学号" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>姓名：&nbsp; 
                        <asp:TextBox ID="姓名" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>选课及成绩：<br />
                        










                       记录：<asp:Button ID="首页" runat="server" Text="l◀" Width="23px" />
&nbsp;<asp:Button ID="上一页" runat="server" Text="◀" Width="23px" />

&nbsp;<asp:Button ID="下一页" runat="server" Text="▶" Width="23px" />
&nbsp;<asp:Button ID="尾页" runat="server" Text="▶l" Width="23px" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
