<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="test_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script>

        window.onload = function () {
            testcheck();
        };
        function testcheck() {
            document.getElementById("选中男性按钮").checked = true;
            document.getElementById("Radio1").checked = true;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:RadioButton ID="选中男性按钮" runat="server" GroupName="sex" />男
             <asp:RadioButton ID="选中女性按钮" runat="server" GroupName="sex" />女
            
        </div>
        <input id="Radio1" type="radio" />test
    </form>
</body>
</html>
