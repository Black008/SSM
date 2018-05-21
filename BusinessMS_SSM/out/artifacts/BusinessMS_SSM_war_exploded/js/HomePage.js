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






