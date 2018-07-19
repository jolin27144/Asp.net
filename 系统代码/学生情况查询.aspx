<%@ Page Language="C#" AutoEventWireup="true" CodeFile="学生情况查询.aspx.cs" Inherits="学生情况查询" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>学生情况查询</title>
    <style type="text/css">

        .auto-style1 {
            width: 58%;
            height: 277px;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            text-align: left;
            width: 853px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <table align="center" border="1" class="auto-style1">
            <tr class="auto-style2">
                <td class="auto-style3" style="color: #000000">学号：&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="学号" runat="server" BackColor="White" OnTextChanged="TextBox7_TextChanged"></asp:TextBox>
&nbsp;照片：&nbsp; 
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    姓名：&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="姓名" runat="server" BackColor="White"></asp:TextBox>
                    <br />
                    <br />
                    性别：&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="性别" runat="server" OnTextChanged="TextBox9_TextChanged"></asp:TextBox>
                    <br />
                    <br />
                    出生日期： <asp:TextBox ID="出生日期" runat="server" OnTextChanged="TextBox10_TextChanged"></asp:TextBox>
                    <br />
                    <br />
                    生源地：&nbsp; &nbsp;
                    <asp:TextBox ID="生源地" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    政治面貌： <asp:TextBox ID="政治面貌" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    是否住宿：<asp:CheckBox ID="是否住宿" runat="server" />
                    <br />
                    <br />
                    宿舍电话： <asp:TextBox ID="宿舍电话" runat="server"></asp:TextBox>
&nbsp;<br />
&nbsp;<br />
                    记录：<asp:Button ID="首页" runat="server" Text="l◀" Width="23px" />
&nbsp;<asp:Button ID="上一页" runat="server" Text="◀" Width="23px" />

&nbsp;<asp:Button ID="下一页" runat="server" Text="▶" Width="23px" />
&nbsp;<asp:Button ID="尾页" runat="server" Text="▶l" Width="23px" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
