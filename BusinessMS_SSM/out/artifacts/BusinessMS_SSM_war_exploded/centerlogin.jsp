<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>CenterLogin</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/loginStyles.css" rel="stylesheet">
</head>
<body>

<%--header--%>
<jsp:include page="header.jsp"></jsp:include>
<%--nav--%>
<jsp:include page="loginpageNav.jsp"></jsp:include>
<!--背景图-->
<div class="img1">
    <form class="formbox" action="centerDetailsPage.jsp">
        <ul class="ultext">
            <li>
                <span>用户名</span>
                <input class="d1" id="namenum" pattern="^(?=[a-zA-Z])(?![0-9]+$)(?![a-zA-Z]+$)[a-zA-Z0-9]{2,20}$" type="text" name="text" required onblur="changenote()">
                <p id="demo"></p>
            </li>

            <li>
                <span>密码</span>
                <input class="d1" id="pas1" pattern="^.*[^\d].*$" type="password" name="text" required onblur="changenote1()">
                <p id="demo1"></p>
            </li>

            <li class="sub">
                <input id="clicksubmit" class="sub" type="button" value="登录">
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
<script src="js/LoginJS.js"></script>

</body>
</html>