/**
 * Created by Administrator on 18-3-30.
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
/*Login*/
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
        f("demo").innerHTML="";
    }
}

function changenote1() {
    if(f("pas1").validity.valueMissing){
        f("demo1").innerHTML="请输入密码！";
        return;
    }
    else {
        f("demo1").innerHTML="";
    }
    if(f("pas1").validity.patternMismatch){
        f("demo1").innerHTML="不符合正则！";
        return
    }
    else {
        f("demo1").innerHTML="";
    }
}

/*注册页面 */
/*验证正则*/
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
        f("demo").innerHTML="";
    }
}

function changenote1() {
    if(f("pas1").validity.valueMissing){
        f("demo1").innerHTML="请输入密码！";
        return;
    }
    else {
        f("demo1").innerHTML="";
    }
    if(f("pas1").validity.patternMismatch){
        f("demo1").innerHTML="不符合正则！";
        return
    }
    else {
        f("demo1").innerHTML="";
    }
}

function changenote2() {
    if(f("pas2").validity.valueMissing){
        f("demo2").innerHTML="请输入密码！";
        return;
    }
    else {
        f("demo2").innerHTML="";
    }
    if(f("pas2").validity.patternMismatch){
        f("demo2").innerHTML="不符合正则！";
        return
    }
    else {
        f("demo2").innerHTML="";
    }
}
/*密码验证*/
function nameCheck() {

    if(f("pas1").value != f("pas2").value){
        f("pas2").setCustomValidity("密码两次输入不一致！")
        return false
    }
    f("pas2").setCustomValidity("");

}

/*详情页checkbox*/
function print() {
    if (f("headcheckbox").hasAttribute('checked')) {
        f("headcheckbox").removeAttribute('checked');
        for (var i = 0; i < fname("headcheckbox1").length; i++) {
            fname("headcheckbox1")[i].checked = false;
        }
    } else {
        f("headcheckbox").setAttribute('checked', "true");
        for (var i = 0; i < fname("headcheckbox1").length; i++) {
            fname("headcheckbox1")[i].checked = true;
        }

    }


}
/*
$(document).ready(function(){
    $("#deletebut").click(function () {
        $(".selected:checked").parent().parent().remove();
    })

})*/
