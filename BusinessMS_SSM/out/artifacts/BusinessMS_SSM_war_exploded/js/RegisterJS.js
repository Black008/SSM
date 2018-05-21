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


/*验证用户名*/
function changenote() {
    if(f("namenum").validity.valueMissing){
        f("demo").innerHTML="输入用户名！";
        return;
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
        var username = $("#namenum").val();
        $.post("checkloginRegUser",{
            user:username
        },function (data) {
            /*如果用户存在点击提交按钮就插入同时自动跳转到登陆界面*/
            if(data.user!=null) {
                $("#demo").html("以存在");
            }else{
                $("#demo").html("√");
            }
            },"json");
    }
    f("demo").innerHTML="";
}

/*验证密码*/
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
        f("demo1").innerHTML="";
    }

}
$("#clicksubmit").click(function () {
    if(f("pas1").value != f("pas2").value){
        $("#demo2").html("两次输入不一致");
    }else{
        var username = $("#namenum").val();
        var password = $("#pas1").val();
        $.post("insertUser",{
            user:username,
            pwd:password
        },function (data) {
            if(data.num > 0){
                window.location.href="centerlogin.jsp";
            }
        },"json");
    }
})
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
$("#qreg").click(function () {
    alert("请登录")
})
$("#qqreg").click(function () {
    alert("请登录")
})





