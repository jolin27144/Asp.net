﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="报表打印.aspx.cs" Inherits="报表打印" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>报表打印</title>
    <style type="text/css">
        .auto-style3 {
            width: 562px;
            height: 329px;
        } 
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            font-size: x-large;
        }
        .auto-style7 {
            height: 24px;
            text-align: center;
        }
        .auto-style8 {
            text-align: center;
            height: 71px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

         <table align="center" border="1" class="auto-style3">

            <tbody class="auto-style5">
                <tr>
                    <td class="auto-style8" colspan="3"><strong>
                        <asp:Label ID="Label1" runat="server" BorderStyle="Groove" CssClass="auto-style6" Text="简单查询"></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="Label2" runat="server" Text="当前日期"></asp:Label>
                        <asp:TextBox ID="当前日期" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style7">
                        <asp:Label ID="Label3" runat="server" Text="当前时间"></asp:Label>
                        <asp:TextBox ID="当前时间" runat="server"></asp:TextBox>
                    </td>
                </tr>
               
                <tr>
                    <td class="auto-style7">
                        <asp:Button ID="学生情况报表" runat="server" Text="学生情况报表" PostBackUrl="~/学生情况报表.aspx" />
                        <br />
                    </td>
                    <td class="auto-style7">
                       <asp:Button ID="学生成绩报表" runat="server" Text="学生成绩报表" PostBackUrl="~/学生成绩报表.aspx" />
                        <br />
                    </td>
                </tr>

                 <tr>
                    <td class="auto-style7">
                        <asp:Button ID="生源地人数统计" runat="server" Text="生源地人数统计" PostBackUrl="~/生源地人数统计查询.aspx" />
                        <br />
                    </td>
                    <td class="auto-style7">
                       <asp:Button ID="课程档案一览表" runat="server" Text="课程档案一览表" PostBackUrl="~/课程档案一览表.aspx" />
                        <br />
                    </td>
                </tr>

                <tr>
                    <td class="auto-style7">
                       <asp:Button ID="返回主页" runat="server" Text="返回主页" PostBackUrl="~/index.aspx" />
                        <br />
                    </td>
                </tr>
   
            </tbody>
        </table>

    </form>
</body>
</html>
