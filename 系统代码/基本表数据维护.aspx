<%@ Page Language="C#" AutoEventWireup="true" CodeFile="基本表数据维护.aspx.cs" Inherits="基本表数据维护" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>基本表数据维护</title>
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
            height: 46px;
            text-align: center;
        }
        .auto-style9 {
            height: 446px;
        }
        .auto-style10 {
            height: 42px;
            text-align: center;
        }
        .auto-style11 {
            height: 53px;
            text-align: center;
        }
        .auto-style12 {
            height: 48px;
            text-align: center;
        }
    </style>
</head>
   
<body style="height: 514px">
    <form id="form1" runat="server" class="auto-style9" >

  <table align="center" border="1" class="auto-style3">
            <tbody class="auto-style5">
                <tr>
                    <td class="auto-style5" colspan="3"><strong>
                        <asp:Label ID="Label1" runat="server" BorderStyle="Groove" CssClass="auto-style6" Text="基本表数据维护"></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:Label ID="Label2" runat="server" Text="当前日期"></asp:Label>
                        <asp:TextBox ID="当前日期" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style12">
                        <asp:Label ID="Label3" runat="server" Text="当前时间"></asp:Label>
                        <asp:TextBox ID="当前时间" runat="server"></asp:TextBox>
                    </td>
                </tr>
               
                <tr>
                    <td class="auto-style11">
                        <asp:Button ID="学生情况维护" runat="server" Text="学生情况维护" PostBackUrl="~/学生情况维护.aspx" />
                        <br />
                    </td>
                    <td class="auto-style11">
                       <asp:Button ID="教师情况维护" runat="server" Text="教师情况维护" PostBackUrl="~/教师情况维护.aspx" />
                        <br />
                    </td>
                </tr>

                 <tr>
                    <td class="auto-style7">
                        <asp:Button ID="选课及成绩维护" runat="server" Text="选课及成绩维护" PostBackUrl="~/选课及成绩维护.aspx" />
                        <br />
                    </td>
                    <td class="auto-style7">
                       <asp:Button ID="教师讲授课程维护" runat="server" Text="教师讲授课程维护" PostBackUrl="~/教师讲授课程维护.aspx" />
                        <br />
                    </td>
                </tr>

                <tr>
                    <td class="auto-style10">
                        <asp:Button ID="课程档案维护" runat="server" Text="课程档案维护" PostBackUrl="~/课程档案维护.aspx" />
                        <br />
                    </td>
                    <td class="auto-style10">
                       <asp:Button ID="返回主页" runat="server" Text="返回主页" PostBackUrl="~/index.aspx" />
                        <br />
                    </td>
                </tr>


                
            </tbody>
        </table>
        


    </form>
</body>
</html>
