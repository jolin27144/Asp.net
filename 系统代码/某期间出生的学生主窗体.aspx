<%@ Page Language="C#" AutoEventWireup="true" CodeFile="某期间出生的学生主窗体.aspx.cs" Inherits="某期间出生的学生主窗体" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>某期间出生的学生主窗体</title>
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
        .auto-style12 {
            height: 48px;
            text-align: center;
        }
    .auto-style13 {
        height: 461px;
    }
    .auto-style14 {
        height: 164px;
    }
    </style>
</head>
<body style="height: 460px">
    <form id="form1" runat="server" class="auto-style13">

        <table align="center" border="1" class="auto-style3">
            <tbody class="auto-style5">
                <tr>
                    <td class="auto-style5" colspan="2"><strong>
                        <asp:Label ID="Label1" runat="server" BorderStyle="Groove" CssClass="auto-style6" Text="学生信息查询"></asp:Label>
                        </strong></td>
                </tr>
                 <tr>
                     <td class="auto-style12" >
                         <asp:Label ID="Label4" runat="server" Text="请输入："></asp:Label>
                     </td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:Label ID="Label2" runat="server" Text="起始日期："></asp:Label>
                        <asp:TextBox ID="起始日期" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style12">
                        <asp:Label ID="Label3" runat="server" Text="终止日期："></asp:Label>
                        <asp:TextBox ID="终止日期" runat="server"></asp:TextBox>
                    </td>
                </tr>
               
                <tr>
                    <td class="auto-style14">
                        某期间出生的学生子窗体：
                        
                     
                        
                        
                    </td>
                </tr>


            </tbody>
        </table>

    </form>
</body>
</html>
