<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>centerRegister</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/Registerstyles.css" rel="stylesheet">
</head>
<body>
<%--header--%>
<jsp:include page="header.jsp"></jsp:include>
<!--导航-->
<nav class="boxnavmax">
    <ul class="ul1">
        <li><a href="centerlogin.jsp" target="nav">登录</a></li>
        <li><a href="centerRegister.jsp" target="nav">注册</a></li>
        <li>
            <img class="imgchange" src="img/down.png">
            <a class="boxnav2">
                <span>商家管理</span>
            </a>
        </li>
    </ul>
    <ul class="ul2">
        <li>
            <a href="centerlogin.jsp">请登录</a>
        </li>
    </ul>
</nav>
<!--商家管理下面-->
<div class="boxlg">
    <div class="boxlg1">
        <div class="boxlg11">
            <a href="centerlogin.jsp"><span id="qreg">查询</span></a>
        </div>
        <img src="img/timg.png">


    </div>
    <div class="boxlg2">
        <img src="img/zj.png">
        <div class="boxlg22">
            <a href="centerlogin.jsp"><span id="qqreg">添加</span></a>
        </div>

    </div>
</div>
<!--背景图-->
<div class="img1">
    <form class="formbox" onsubmit="return clicksubmit()" action="Login.html">
        <ul class="ultext">
            <li>
                <span>用户名</span>
                <input id="namenum"  class="d1" pattern="^(?=[a-zA-Z])(?![0-9]+$)(?![a-zA-Z]+$)[a-zA-Z0-9]{2,20}$" type="text" name="text" autofocus required onblur="changenote()" placeholder="字符数字组合小于20位">
                <p id="demo"></p>
            </li>

            <li>
                <span>密码</span>
                <input id="pas1" class="d1" pattern="^.*[^\d].*$" type="password" name="text" required onblur="changenote1()" placeholder="小于8位的非纯数字">
                <p id="demo1"></p>
            </li>

            <li>
                <span>确认密码</span>
                <input id="pas2" class="d1" pattern="^.*[^\d].*$" type="password" name="text" required onblur="changenote2()">
                <p id="demo2"></p>
            </li>

            <li>
                <input id="clicksubmit" class="sub" type="button" value="注册" onclick="clicksubmit()">
            </li>
        </ul>
    </form>
</div>
<%--footer--%>
<jsp:include page="footer.jsp"></jsp:include>

<script src="js/jquery1.12.4.min.js"></script>
<script src="js/jquery-1.12.4.js"></script>
<script>
    $(function () {
        $('[data-toggle="popover"]').popover()
    })
</script>
<script src="js/bootstrap.js"></script>
<script src="js/RegisterJS.js"></script>

</body>
</html>