<%@ Page Language="C#" AutoEventWireup="true" CodeFile="用户登录.aspx.cs" Inherits="用户登录" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>用户登录</title>
    <style type="text/css">
        .auto-style1 {
            text-align: left;
        }
        .auto-style2 {
            width: 49%;
            height: 339px;
        }
        .auto-style3 {
            height: 101px;
            font-size: xx-large;
            text-align: center;
        }
        .auto-style13 {
            height: 39px;
        }
        .auto-style16 {
            text-align: center;
        }
        .auto-style9 {
            margin-top: 0px;
        }
        .auto-style14 {
            margin-left: 198px;
        }
        .auto-style15 {
            margin-left: 32px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
        </div>

        <table align="center" border="1" class="auto-style2">
            <tr>
                <td class="auto-style3"><strong>教学管理系统</strong></td>
            </tr>
            <tr>
                <td class="auto-style13" >&nbsp;&nbsp; 说明：未经授权的用户不得登录本系统，忘记密码请与管理员联系</td>
            </tr>
            <tr>
                <td class="auto-style16" >&nbsp;&nbsp; 输入用户名：&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" Width="186px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style16" >&nbsp;&nbsp; 输入密码：&nbsp;<asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style9"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style16">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style14" Text="确认" Width="78px" />
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style15" OnClick="Button3_Click" Text="退出" Width="73px" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
