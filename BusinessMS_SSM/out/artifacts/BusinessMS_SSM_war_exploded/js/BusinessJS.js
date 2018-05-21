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
    var h =today.getHours();
    var m =today.getMinutes();
    var s =today.getSeconds();
    m=checkTime(m);
    s=checkTime(s);
    f("CurrentDate").innerHTML=y+":"+h+":"+m+":"+s;
    t=setTimeout("onDisplay()",1000);
}
function checkTime(i) {
    if(i<10){
        i="0"+i;
    }
    return i;
}





