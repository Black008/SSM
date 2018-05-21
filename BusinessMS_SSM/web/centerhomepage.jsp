<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Center</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/HomePageUI.css" rel="stylesheet">
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
            <a href="centerlogin.jsp"><span>查询</span></a>
        </div>
        <img src="img/timg.png">


    </div>
    <div class="boxlg2">
        <img src="img/zj.png">
        <div class="boxlg22">
            <a href="centerlogin.jsp"><span>添加</span></a>
        </div>

    </div>
</div>
<%--轮播图--%>
<div>
    <div id="carousel-example-generic" class="carousel slide ad" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators ola">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item active boxbig">
                <img class="img1" src="img/image12.jpg" alt="图片不存在！">
                <div class="carousel-caption">
                    <h3>那年</h3>
                    <p>匆匆</p>
                </div>
            </div>
            <div class="item">
                <img class="img1" src="img/image12-2.jpg" alt="图片不存在！">
                <div class="carousel-caption">
                    <h3>那年</h3>
                    <p>匆匆</p>
                </div>
            </div>
            <div class="item">
                <img class="img1" src="img/image12-3.jpg" alt="图片不存在!">
                <div class="carousel-caption">
                    <h3>那年</h3>
                    <p>匆匆</p>
                </div>
            </div>

            <!-- Controls -->
            <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                <input type="image" src="img/earri_left_03.png" class="glyphicon glyphicon-chevron-left" aria-hidden="true"></input>
            </a>
            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                <input type="image" src="img/earri_right_03.png" class="glyphicon glyphicon-chevron-right" aria-hidden="true"></input>
            </a>

        </div>

    </div>
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
<script src="js/Momal.js"></script>
</body>
</html>