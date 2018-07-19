<%@ Page Language="C#" AutoEventWireup="true" CodeFile="T1.aspx.cs" Inherits="test_T1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script src="../js/bootstrap.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <link href="../css/bootstrap.css" rel="stylesheet" />
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <script>
        window.onload = function () {
            showPage();
        }
        function toPage(id) {//跳转第几页
            var nowPage = parseInt(document.getElementById(id).innerHTML);
            document.getElementById("nowPageFont").value = nowPage;
            ajaxSent(nowPage);

        }
        function showPage() {//加载5个页面号按钮
            var nowPage = parseInt(document.getElementById("nowPageFont").value);//当前页面号
            var num = parseInt(document.getElementById("pageNum").value);//总页面数
            var index;//开始按钮索引
            var nowIndex;//选中按钮索引
            var sp1 = document.getElementById("sp-1");
            var sp2 = document.getElementById("sp-2");
            var sp3 = document.getElementById("sp-3");
            var sp4 = document.getElementById("sp-4");
            var sp5 = document.getElementById("sp-5");
            sp1.parentElement.style.background = "";//全部背景设为空白
            sp2.parentElement.style.background = "";
            sp3.parentElement.style.background = "";
            sp4.parentElement.style.background = "";
            sp5.parentElement.style.background = "";
            if (nowPage <= 5) {//前五页时
                index = 1;
                nowIndex = "sp-" + (nowPage);
                sp1.innerText = index;
                sp2.innerText = index + 1;
                sp3.innerText = index + 2;
                sp4.innerText = index + 3;
                sp5.innerText = index + 4;
                document.getElementById(nowIndex).parentElement.style.background = "#33CCFF";
            } else if (nowPage >= (num - 4)) {//后五页时
                index = num - 4;
                nowIndex = "sp-" + (nowPage - num + 5);
                sp1.innerText = index;
                sp2.innerText = index + 1;
                sp3.innerText = index + 2;
                sp4.innerText = index + 3;
                sp5.innerText = index + 4;
                document.getElementById(nowIndex).parentElement.style.background = "#33CCFF";
            } else {//之间
                index = nowPage ;
                nowIndex = "sp-" + 3;
                sp1.innerText = index - 2
                sp2.innerText = index - 1;
                sp3.innerText = index;
                sp4.innerText = index + 1;
                sp5.innerText = index + 2;
                document.getElementById(nowIndex).parentElement.style.background = "#33CCFF";
            }
        }
        function ajaxSent(nowPage) {
            if (window.XMLHttpRequest) {// 针对 IE7+, Firefox, Chrome, Opera, Safari 的代码
                xmlhttp = new XMLHttpRequest();
            }
            else {// 针对 IE6, IE5 的代码
                xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
            }
            xmlhttp.open("GET", "T1.aspx?nowPage=" + nowPage, true);//准备
            xmlhttp.send();//发送
            xmlhttp.onreadystatechange = function () {
                if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {//请求已完成，且响应已就绪。OK
                    var stuString = xmlhttp.responseText;
                    var stuArray = stuString.split(",");
                    hiddenButton(stuArray);
                    fillText(stuArray);
                    showPage();
                }
            }
        }
        function nextPage() {
            var nowPage = ++document.getElementById("nowPageFont").value;
            ajaxSent(nowPage);
        }
        function lastPage() {
            var lastPage = parseInt(document.getElementById("pageNum").value);
            document.getElementById("nowPageFont").value = lastPage;
            ajaxSent(lastPage);
        }
        function fontPage() {
            var nowPage = --document.getElementById("nowPageFont").value;
            ajaxSent(nowPage);
        }
        function fontEst() {
            var nowPage = 1;
            document.getElementById("nowPageFont").value = 1;
            ajaxSent(nowPage);
        }
        function hiddenButton(stuArray) {//隐藏首页，上一页或尾页，下一页按钮
            var isLast = stuArray[8];
            var isFont = stuArray[9];
            //isLast = true;
            if (isLast == 1) {
                document.getElementById("next").disabled = "disabled";
                document.getElementById("last").disabled = "disabled";

            } else {
                document.getElementById("next").disabled = "";
                document.getElementById("last").disabled = "";
            }
            if (isFont == 1) {
                document.getElementById("font").disabled = "disabled";
                document.getElementById("fontest").disabled = "disabled";
            } else {
                document.getElementById("font").disabled = "";
                document.getElementById("fontest").disabled = "";
            }
        }
        function fillText(stuArray) {//填充文本框
            document.getElementById("TextBox1").value = stuArray[0];
            document.getElementById("TextBox2").value = stuArray[1];
            document.getElementById("TextBox3").value = stuArray[2];
            document.getElementById("TextBox4").value = stuArray[3];
            document.getElementById("TextBox5").value = stuArray[4];
            document.getElementById("TextBox6").value = stuArray[5];
            document.getElementById("TextBox7").value = stuArray[6];
            document.getElementById("TextBox8").value = stuArray[7];

        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            学号&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" ReadOnly="true"></asp:TextBox>
            <br />
            姓名&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" Style="margin-top: 1px" ReadOnly="true"></asp:TextBox>
            <br />
            性别&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server" ReadOnly="true"></asp:TextBox>
            <br />
            出生日期&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox4" runat="server" ReadOnly="true"></asp:TextBox>
            <br />
            生源地&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox5" runat="server" ReadOnly="true"></asp:TextBox>
            <br />
            政治面貌&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox6" runat="server" ReadOnly="true"></asp:TextBox>
            <br />
            是否住宿&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox7" runat="server" ReadOnly="true"></asp:TextBox>
            <br />
            宿舍电话&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox8" runat="server" ReadOnly="true"></asp:TextBox>
        </div>
        <button type="button" class="btn btn-default" id="fontest" disabled="disabled" onclick="fontEst()">
            <span class="glyphicon glyphicon-step-backward">首页</span>
        </button>
        <button type="button" class="btn btn-default" onclick="fontPage()" id="font" disabled="disabled">
            <span class="glyphicon glyphicon-chevron-left">上一页</span>
        </button>

        <button type="button" class="btn btn-default" onclick="toPage('sp-1')">
            <span class="" id="sp-1">1</span>
        </button>
        <button type="button" class="btn btn-default" onclick="toPage('sp-2')">
            <span class="" id="sp-2">2</span>
        </button>
        <button type="button" class="btn btn-default" onclick="toPage('sp-3')">

            <span class="" id="sp-3">3</span>
        </button>
        <button type="button" class="btn btn-default" onclick="toPage('sp-4')">
            <span class="" id="sp-4">4</span>
        </button>

        <button type="button" class="btn btn-default" onclick="toPage('sp-5')">
            <span class="" id="sp-5">5</span>
        </button>
        <button type="button" class="btn btn-default" onclick="nextPage()" id="next">
            <span class="glyphicon glyphicon-chevron-right">下一页</span>
        </button>
        <button type="button" class="btn btn-default" id="last" onclick="lastPage()">
            <span class="glyphicon glyphicon-step-forward">尾页</span>
        </button>

        <asp:HiddenField ID="nowPageFont" runat="server" Value="1" />
        <%--当前选中页 --%>
        <asp:HiddenField ID="pageNum" runat="server" />
        <%--总页数--%>
        <asp:Image ID="Image1" runat="server" />
    </form>
</body>
</html>
