<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/5/13
  Time: 17:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <b>属性</b>
 <form action="member/selectById" method="post">
   <input type="text" name="id">
   <input type="submit" value="查询">
 </form>
  <hr>
 <b>对象</b>
 <form action="selectByMember" method="post">
     <input type="text" name="id">
     <input type="submit" value="查询">
 </form>
 <hr>
  <b>不要返回值的跳转</b>
 <form action="toResult" method="post">
     <input type="text" name="id">
     <input type="submit" value="跳转">
 </form>
 <hr>
  <b>ajax</b>

  <input type="text" name="id" id="memID">
  <button id="btnSelect">查询</button>
  <button id="btnSelectBetter">更好的查询</button>
  <hr>
  <b>delete</b>

  <input type="text" name="id" id="memIDde">
  <button id="btnDelete">删除</button>

  <hr>
  <b>insert</b><br>
  <input type="text" name="name" id="name"><br>
  <input type="radio" name="sex" id="sexnan" value="男">男
  <input type="radio" name="sex" id="sexnv"value="女">女<br>
  <input type="text" name="salary" id="salary"><br>
  <input type="checkbox" name="department" id="kaifa" value="开发部">开发部
      <input type="checkbox" name="department" id="tiyu" value="体育部">体育部
      <input type="checkbox" name="department" id="love" value="爱情部">爱情部<br>
  <button id="btnInsert">插入</button>

  <hr>
  <b>mybatis动态查询</b><br>
  <form action="selectMembers" method="post">
      id<input type="text" name="id"><br>
      name<input type="text" name="name"><br>
      <input type="radio" name="sex" value="男">男
      <input type="radio" name="sex" value="女">女<br>
      <input type="submit" value="查询">
  </form>

  <hr>
  <b>mybatis多条id范围查询</b><br>
  <form action="selectByIds" method="post">
      id1<input type="text" name="id"><br>
      id2<input type="text" name="id"><br>
      id3<input type="text" name="id"><br>
      <input type="submit" value="查询">
  </form>


  <hr>
  <b>mybatis ajax多条id范围查询</b><br>


      <button value="查询" id="ajaxbtn">查询</button>




  <script src="js/jquery-1.12.4.js"></script>
  <script>
      $(function () {
          $("#btnSelectBetter").click(function () {
              $.ajax({
                  url:'selectByAjaxBetter.action',
                  data:{id:$("#memID").val()},
                  type:'post',
                  dataType:'json',
                  success:function (data) {
                      console.log(data);
                  },
                  error:function () {
                      console.log('失败')
                  }
              })
          })
      })
      $(function () {
          $("#btnSelect").click(function () {
              $.ajax({
                  url:'selectByAjax.action',
                  data:{id:$("#memID").val()},
                  type:'post',
                  dataType:'json',
                  success:function (data) {
                      console.log(data);
                  },
                  error:function () {
                      console.log('失败')
                  }
              })
          })
      })
      $(function () {
          $("#btnDelete").click(function () {
              $.ajax({
                  url:'deleteByPrimaryKey.action',
                  data:{id:$("#memIDde").val()},
                  type:'post',
                  dataType:'json',
                  success:function (data) {
                      if(data>0){
                          alert("删除成功！")
                      }
                  },
                  error:function () {
                      console.log('失败')
                  }
              })
          })
      })
      $(function () {
          $("#btnInsert").click(function () {
              $.post("insert.action",{
                  name:$("#name").val(),
                  sex:$('input:radio[name="sex"]:checked').val(),
                  salary:$("#salary").val(),
                  department:$('input:checkbox[name="department"]:checked').val()

              },function (data) {
                  if(data>0){
                      alert("插入成功！")
                  }

              },"json")
          })
      })
      $(function () {
          var ids=[];
          ids.push(1);
          ids.push(2);
          ids.push(3);
          $("#ajaxbtn").click(function () {
              $.post("selectByIdsAjax.action",{
                  id:ids
              },function (data) {
                  if(data!=null){
                      alert("查询成功！")
                  }

              },"json")
          })
      })
  </script>
  </body>
</html>
