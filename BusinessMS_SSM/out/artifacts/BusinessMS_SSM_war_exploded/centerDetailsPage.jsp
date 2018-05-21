<%@ page import="cn.com.zhirun.ssm0514.model.BusinessModel" %>
<%@ page import="cn.com.zhirun.ssm0514.model.BusinessModel" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>DetailsPage</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/DetailsPagestyles.css" rel="stylesheet">
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
<div>
    <!--背景图-->
    <div class="img1">
       <div class="boxmaxbg">
           <div class="boxtop">
                <form>
                    <!--第一行-->
                    <ul class="checkul1 ul11">
                        <li>
                            <span  class="s222">商家ID</span>
                            <input id="id" class="flg" type="text" name="businessId" >
                        </li>
                        <li>
                            <span>商家名</span>
                            <input id="name" class="flg" type="text" name="businessName">
                        </li>
                        <li>
                            <span>电话</span>
                            <input id="phone" class="flg" type="text" name="phone">
                        </li>
                    </ul>
                    <!--第二行-->
                    <ul class="checkul2 ul11">
                        <li>
                            <span  class="s222">商家分类</span>
                            <input class="dian" type="radio" name="radio1" value="中餐"><span>中餐</span>
                            <input type="radio" name="radio1" value="韩餐"><span>韩餐</span>
                            <input type="radio" name="radio1" value="日餐"><span>日餐</span>
                            <input type="radio" name="radio1" value="" checked><span>全部</span>
                        </li>
                    </ul>
                    <!--第三行-->
                    <ul class="checkul3 ul11">
                        <li class="first">
                            <span class="s222">商家地址</span>
                            <select id="selectaddress">
                                <option value="">
                                    全部
                                </option>
                                <option value="甘井子区">
                                    甘井子区
                                </option>
                                <option value="沙河口区">
                                    沙河口区
                                </option>
                                <option value="高新园区">
                                    高新园区
                                </option>
                            </select>

                        </li>
                        <li class="sen">
                            <span>详细地址</span>
                            <input id="detailaddress" class="inputbox" type="text" name="detailaddress">
                        </li>
                    </ul>
                    <!--第四行-->
                    <ul class="checkul4 ul11">
                        <li>
                            <span class="s222">人均消费</span>
                            <input id="salaryFrom" class="flg" type="text" name="salaryFrom">

                        </li>
                        <span id="checkisnumFrom"></span>
                        <li  class="spanli2">
                            <span class="spanli">~</span>
                            <input id="salaryTo" class="flg" type="text" name="salaryTo">
                            <span class="spanli1">元/人</span>
                            <span id="checkisnumTo"></span>
                        </li>

                    </ul>
                    <!--第五行-->
                    <ul class="checkul5">
                        <li>
                            <input class="clear" type="submit" value="清空">
                        </li>
                        <li>
                            <input id="search" class="find" type="button" value="查询">
                        </li>
                    </ul>
                </form>

           </div>
           <hr class="hrrr">
           <div class="boxmiddle">
               <button id="deletebut" class="but" style="background-color: rgb(217,83,79);font-size: 10px;border-radius: 4px;">删除所选</button>
               <span>第<span style="color: red" id="nowPage">1</span>页/共<span id="countPage" style="color: red">0</span>页</span>
               <span class="span1">共查到<span id="countres" style="color: red">0</span>条消息</span>
              <%-- <table class="table table-striped tabletr">
                   <tr class="f">
                       <th>
                           <input id="headcheckbox" type="checkbox" onchange="print()">
                       </th>
                       <th>
                           <span>商家ID</span>
                       </th>
                       <th>
                           <span>商家名</span>
                       </th>
                       <th>
                           <span>电话</span>
                       </th>
                       <th>
                           <span>分类</span>
                       </th>
                       <th>
                           <span>地址</span>
                       </th>
                       <th>
                           <span>详细地址</span>
                       </th>
                       <th>
                           <span>人均/元</span>
                       </th>
                       <th>

                       </th>
                   </tr>
                   <tr id="one">
                       <td id="one1"><input class="selected" name="headcheckbox1" type="checkbox"></td>
                       <td><span>ZB123218378197</span></td>
                       <td><span>巷子里小酒馆</span></td>
                       <td><span>0411-15648798</span></td>
                       <td><span>中餐</span></td>
                       <td><span>甘井子区</span></td>
                       <td><span>芝麻街B座1619</span></td>
                       <td><span>甘井子区</span></td>
                       <td><a href="addModifyPage.jsp"><button style="width:60px; background-color: rgb(92,184,92);border-radius:4px;color: white;border: none;
    box-shadow: 2px 2px 2px black;">修改</button></a></td>
                   </tr>
                   <tr>
                       <td><input class="selected" name="headcheckbox1" type="checkbox"></td>
                       <td><span>ZB123218378197</span></td>
                       <td><span>巷子里小酒馆</span></td>
                       <td><span>0411-15648798</span></td>
                       <td><span>中餐</span></td>
                       <td><span>甘井子区</span></td>
                       <td><span>芝麻街B座1619</span></td>
                       <td><span>甘井子区</span></td>
                       <td><a><button style="width:60px;background-color: rgb(92,184,92);border-radius:4px;color: white;border: none;
    box-shadow: 2px 2px 2px black;">修改</button></a></td>
                   </tr>
                   <tr>
                       <td><input class="selected" name="headcheckbox1" type="checkbox"></td>
                       <td><span>ZB123218378197</span></td>
                       <td><span>巷子里小酒馆</span></td>
                       <td><span>0411-15648798</span></td>
                       <td><span>中餐</span></td>
                       <td><span>甘井子区</span></td>
                       <td><span>芝麻街B座1619</span></td>
                       <td><span>甘井子区</span></td>
                       <td><a href="addModifyPage.jsp"><button style="width:60px;background-color: rgb(92,184,92);border-radius:4px;color: white;border: none;
    box-shadow: 2px 2px 2px black;">修改</button></a></td>
                   </tr>
                   <tr>
                       <td><input class="selected" name="headcheckbox1" type="checkbox"></td>
                       <td><span>ZB123218378197</span></td>
                       <td><span>巷子里小酒馆</span></td>
                       <td><span>0411-15648798</span></td>
                       <td><span>中餐</span></td>
                       <td><span>甘井子区</span></td>
                       <td><span>芝麻街B座1619</span></td>
                       <td><span>甘井子区</span></td>
                       <td><a href="addModifyPage.jsp"><button style="width:60px;background-color: rgb(92,184,92);border-radius:4px;color: white;border: none;
    box-shadow: 2px 2px 2px black;">修改</button></a></td>
                   </tr>
                   <tr>
                       <td><input class="selected" name="headcheckbox1" type="checkbox"></td>
                       <td><span>ZB123218378197</span></td>
                       <td><span>巷子里小酒馆</span></td>
                       <td><span>0411-15648798</span></td>
                       <td><span>中餐</span></td>
                       <td><span>甘井子区</span></td>
                       <td><span>芝麻街B座1619</span></td>
                       <td><span>甘井子区</span></td>
                       <td><a href="addModifyPage.jsp"><button style="width:60px;background-color: rgb(92,184,92);border-radius:4px;color: white;border: none;
    box-shadow: 2px 2px 2px black;">修改</button></a></td>
                   </tr>
               </table>--%>
               <table class="table table-striped tabletr" id="deletable">
                   <tr class="f">
                       <th>
                           <input id="headcheckbox" type="checkbox" onchange="print()">
                       </th>
                       <th>
                           <span>商家ID</span>
                       </th>
                       <th>
                           <span>商家名</span>
                       </th>
                       <th>
                           <span>电话</span>
                       </th>
                       <th>
                           <span>分类</span>
                       </th>
                       <th>
                           <span>地址</span>
                       </th>
                       <th>
                           <span>详细地址</span>
                       </th>
                       <th>
                           <span>人均/元</span>
                       </th>
                       <th>

                       </th>
                   </tr>
                   <tbody id="showTable">
                   <% BusinessModel business = (BusinessModel)request.getSession().getAttribute("business1");%>
                   <% if(null!=business){ %>
                   <tr>
                       <td><input class="selected" name="headcheckbox1" type="checkbox"></td>
                       <td><span><%=business.getBusinessid()%> </span></td>
                       <td><span> <%=business.getBusinessname()%></span></td>
                       <td><span> <%=business.getPhone()%></span></td>
                       <td><span> <%=business.getBusinesskinds()%></span></td>
                       <td><span><%=business.getBusinessaddress()%></span></td>
                       <td><span><%=business.getDetailaddress()%></span></td>
                       <td><span><%=business.getSalary()%></span></td>
                       <td><a href='ModifyPage.jsp\?businessId="+data.businessId+"&businessNAME="+data.name+"&phone="+data.phone+"&Kinds="+data.Kinds+"&address="+data.address+"&detailaddress="+data.detailaddress+
            "&salary="+data.salary+"'>
                           <input type='button' style= 'width:60px;background-color: rgb(92,184,92);border-radius:4px; color:white; border:none;box-shadow: 2px 2px 2px black;' value='修改'></a></td>
                                     </tr>
                   <%session.removeAttribute("business1");%>
                   <% } %>
                   </tbody>

                   </table>

               <div class="boxbottom">
                   <a id="FristPage" class="btn btn-default" role="button">首页</a>
                   <input class="btn btn-default" type="button" id="PrePage" value="上一页">
                   <input class="btn btn-default" type="button" id="NextPage" value="下一页">
                   <input class="btn btn-default" type="button" id="LastPage" value="末页">
                   <input class="btn btn-default" type="button" id="jumpPage" value="跳转到">
                   <input id="Pagebyjump" class="btn btn-default btnn" type="text"><span>页</span>
                   <!-- Single button -->
                       <%--class="btn-group"--%>
                      <%-- <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           条数 <span class="caret"></span>
                       </button>
                       <ul class="dropdown-menu">
                           <li><a><span id="selectFivePage">5</span></a></li>
                           <li><a><span id="selectSixPage">6</span></a></li>
                       </ul>--%>
                       <select id="ShowPages">
                           <option value="5">每页显示5行</option>
                           <option value="10">每页显示10行</option>
                       </select>
                   <button id="quitLogin">退出登录</button>
               </div>
           </div>

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
<script src="js/DetailsJS.js"></script>
<%--<script src="js/LoginJS.js"></script>--%>

</body>
</html>

</body>
</html>