/**
 * Created by Administrator on 18-3-27.
 */
function f(id) {
    return document.getElementById(id);
}
/*时间的设定*/
function onDisplay() {
    var today = new Date();
    var y =today.getFullYear();
    var M =today.getMonth()+1;
    var d =today.getDay();
    var h =today.getHours();
    var m =today.getMinutes();
    var s =today.getSeconds();
    M=checkTime(M);
    d=checkTime(d);
    h=checkTime(h);
    m=checkTime(m);
    s=checkTime(s);
    f("CurrentDate").innerHTML=y+"-"+M+"-"+d+" "+h+":"+m+":"+s;
    t=setTimeout("onDisplay()",1000);
}
function checkTime(i) {
    if(i<10){
        i="0"+i;
    }
    return i;
}

/*验证用户名是否正确*/
function changenote() {
    if(f("namenum").validity.valueMissing){
        f("demo").innerHTML="输入用户名！";
        return
    }
    else {
        f("demo").innerHTML="";
    }
    if(f("namenum").validity.patternMismatch){
        f("demo").innerHTML="不符合正则！";
        return
    }
    else {
        /*判断用户是否存在*/
        $.post("checkloginRegUser",{
            user:$("#namenum").val()
        },function (data) {
            /*如果用户存在什么也不显示 如果不存在就显示错误信息 例如：没有此用户*/
            if(data.user!=null){
                $("#demo").html("√");
            }else{
                $("#demo").html("不存在");
            }
        },"json");

        f("demo").innerHTML="";
    }
}

/*验证密码是否正确*/
function changenote1() {
    if(f("pas1").validity.valueMissing){
        f("demo1").innerHTML="请输入密码！";
        return;
    }
    else {
        f("demo1").innerHTML="";
    }
    if(f("pas1").validity.patternMismatch || f("pas1").value.length>8){
        f("demo1").innerHTML="不符合正则！";
        return
    }
    else {
        /*用户存在 继续判断用户名和密码是否正确*/
        $("#clicksubmit").click(function () {
            var username = $("#namenum").val();
            var password = $("#pas1").val();
            $.post("checkPwdisexist",{
                user:username,
                pwd:password
            },function (data) {
                if(data.num > 0){
                    window.location.href="centerDetailsPage.jsp";
                }else{
                    $("#demo1").html("密码错误！")
                }
            },"json");
        })
        f("demo1").innerHTML="";
    }
}

/*淡入淡出*/
$(document).ready(function () {
    $(".boxnav2").click(function () {
        $(".boxlg").fadeIn(500);
    })

    $(".boxlg").mouseleave(function () {
        $(".boxlg").fadeOut(500);
    })

    $(".imgchange").hover(function () {
        $(".imgchange").attr("src","img/up.png");
    })
    $(".imgchange").mouseleave(function () {
        $(".imgchange").attr("src","img/down.png");
    })

})

/*点击添加按钮和查询提示请登录*/
$("#qlogin").click(function () {
    alert("请登录")
})
$("#qqlogin").click(function () {
    alert("请登录")
})