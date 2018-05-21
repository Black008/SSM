<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Modify</title>
</head>
<body>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>HomePageUI</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/ModifyPagestyles.css" rel="stylesheet">
</head>
<body onload="onDisplay()">

<%--header--%>
<jsp:include page="header.jsp"></jsp:include>
<%--nav导入的时查找页已经登陆状态的nav--%>
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
        <%--实现用户已登录--%>

        <li>
            <a id="login">${user2}已登陆</a>
        </li>

    </ul>
</nav>
<!--商家管理下面-->
<div class="boxlg">
    <div class="boxlg1">
        <div class="boxlg11">
            <a href="centerDetailsPage.jsp"><span>查询</span></a>
        </div>
        <img src="img/timg.png">
    </div>
    <div class="boxlg2">
        <img src="img/zj.png">
        <div class="boxlg22">
            <a href="addModifyPage.jsp"><span id="add">添加</span></a>
        </div>

    </div>
</div>

<!--背景图-->
<div class="img1">
    <div class="boxmaxbg">
        <div class="boxtop">
            <form>
                <!--第一行-->
                <ul class="checkul1 ul11">
                    <li>
                        <span  class="s222">商家ID</span>
                        <input id="id" class="flg" type="text" name="text" disabled value="<%=request.getParameter("businessId")%>">
                    </li>
                    <li>
                        <span>商家名</span>
                        <input id="name" class="flg" type="text" name="text" required value="<%=request.getParameter("businessNAME")%>">
                    </li>

                </ul>
                <!--第二行-->
                <ul class="checkul2 ul11">
                    <li>
                        <span>电话</span>
                        <input id="phone" class="flg1" type="text" name="text" required value="<%=request.getParameter("phone")%>">
                    </li>
                    <li class="li2" id="rad">
                        <span  class="s222">商家分类</span>
                        <% if("中餐".equals(request.getParameter("Kinds"))){%>
                        <input class="dian" type="radio" name="radio1" value="中餐" checked><span>中餐</span>
                        <%} else{%>
                        <input class="dian" type="radio" name="radio1" value="中餐"><span>中餐</span>
                        <%}%>

                        <% if("韩餐".equals(request.getParameter("Kinds"))){%>
                        <input type="radio" name="radio1" value="韩餐" checked><span>韩餐</span>
                        <%} else{%>
                        <input type="radio" name="radio1" value="韩餐"><span>韩餐</span>
                        <%}%>

                        <% if("日餐".equals(request.getParameter("Kinds"))){%>
                        <input type="radio" name="radio1" value="日餐" checked><span>日餐</span>
                        <%} else{%>
                        <input type="radio" name="radio1" value="日餐"><span>日餐</span>
                        <%}%>



                        <%-- <input type="radio" name="radio"><span>中餐</span>--%>
                    </li>
                </ul>
                <!--第三行-->
                <ul class="checkul3 ul11">
                    <li class="first">
                        <span class="s222">商家地址</span>
                        <select id="selectaddress">
                            <% if("甘井子区".equals(request.getParameter("address"))){%>
                            <option selected value="甘井子区">
                                甘井子区
                            </option>
                            <%}else{%>
                            <option value="甘井子区">
                                甘井子区
                            </option>
                            <%}%>


                            <% if("沙河口区".equals(request.getParameter("address"))){%>
                            <option selected value="沙河口区">
                                沙河口区
                            </option>
                            <%}else{%>
                            <option value="沙河口区">
                                沙河口区
                            </option>
                            <%}%>

                            <% if("高新园区".equals(request.getParameter("address"))){%>
                            <option selected value="高新园区">
                                高新园区
                            </option>
                            <%}else{%>
                            <option value="高新园区">
                                高新园区
                            </option>
                            <%}%>

                        </select>

                    </li>
                    <li class="sen">
                        <span>详细地址</span>
                        <input id="detailaddress" class="inputbox" type="text" name="text" required value="<%=request.getParameter("detailaddress")%>" >
                    </li>
                </ul>
                <!--第四行-->
                <ul class="checkul4 ul11">
                    <li>
                        <span class="s222">人均消费</span>
                        <input id="salary" class="flg" type="text" name="text" required value="<%=request.getParameter("salary")%>">
                        <span class="spanli1">元/人</span>
                    </li>
                    <%--     <li  class="spanli2">
                             <span class="spanli">~</span>
                             <input id="salaryTo" class="flg" type="text" name="text" required>

                         </li>--%>

                </ul>
                <!--第五行-->
                <ul class="checkul5">
                    <li>
                        <input class="clear" type="submit" value="清空">
                    </li>
                    <li>
                        <input id="ModifyBusiness" class="find" type="button" value="保存">
                    </li>
                </ul>
            </form>

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
<script src="js/Modify.js"></script>
</body>
</html>

</body>
</html>