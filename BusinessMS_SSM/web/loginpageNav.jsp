<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Nav</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/Momal.css" rel="stylesheet">
</head>
<body>
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
            <a>请登录</a>
        </li>
    </ul>
</nav>
<!--商家管理下面-->
<div class="boxlg">
    <div class="boxlg1">
        <div class="boxlg11">
            <a href="centerlogin.jsp"><span id="qlogin">查询</span></a>
        </div>
        <img src="img/timg.png">


    </div>
    <div class="boxlg2">
        <img src="img/zj.png">
        <div class="boxlg22">
            <a href="centerlogin.jsp"><span id="qqlogin">添加</span></a>
        </div>

    </div>
</div>

<script src="js/jquery1.12.4.min.js"></script>
<script>
    $(function () {
        $('[data-toggle="popover"]').popover()
    })
</script>
<script src="js/bootstrap.js"></script>
<script src="js/Momal.js"></script>
</body>
</html>