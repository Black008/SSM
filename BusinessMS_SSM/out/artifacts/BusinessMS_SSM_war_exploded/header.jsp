<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>header</title>
  <%--  <link href="css/bootstrap.min.css" rel="stylesheet">--%>
    <link href="css/Momal.css" rel="stylesheet">
</head>
<body onload="onDisplay()">
<!--头部:系统时间的获取-->
<header class="row boxrow">
    <!--logo-->
    <div class="col-md-5 col-sm-5">
        <a href="centerhomepage.jsp" target="header">
            <img class="imgaaa" src="img/logo.png" alt="图片不存在！">
        </a>
    </div>
    <!--标题-->
    <div class="col-md-5 col-sm-5">
        <h2><b class="fon">商家管理系统</b></h2>
    </div>
    <!--系统当前时间时间-->
    <div id="CurrentDate" class="col-md-2 col-sm-2 time">
    </div>
</header>
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