/**
 * Created by Administrator on 18-3-28.
 */


/*点击保存按钮 把输入的信息插入到数据库 弹出提示框说明插入成功*/
$(function () {
    $("#addBusiness").click(function () {
        if($("#name").val()==''){
            alert("商家名字不能为空！")
        }else{
            var id = $("#id").val();
            var name = $("#name").val();
            var phone = $("#phone").val();
            var kinds = $('input:radio[name="radio1"]:checked').val();
            var address = $("select").val();
            var detailaddress = $("#detailaddress").val();
            var salary = $("#salary").val();

            $.post("insertBusiness",{
                businessid: id,
                businessname: name,
                phone: phone,
                businesskinds: kinds,
                businessaddress: address,
                detailaddress: detailaddress,
                salary:salary
            },function (data) {
                if(data.num>0){
                    alert("添加成功，点击确定进入查询页")
                    window.location.href="centerDetailsPage.jsp";
                }

            },"json")
        }
    })
})

/*当输入商家名字失去焦点之后，查询数据库商家名字是否存在，如果存在跳转页面显示用户名以存在*/
$(function () {

        $("#name").blur(function () {
            if($("#name").val()==''){
                alert("商家名字不能为空！")
            }else{
                var name = $("#name").val();
                $.post("checkaddBusiness",{
                    businessname:name
                },function (data) {
                    if(data.num>0){
                        alert("商家名字重复！")
                    }else{
                        alert("可以用这个名字！")
                    }


                },"json");
            }

        })

    })

/*当点击修改页的保存按钮的时候 去数据库根据商家Id更新所有数据，*/
$(function(){
    $("#ModifyBusiness").click(function () {
        var id = $("#id").val();
        var name = $("#name").val();
        var phone = $("#phone").val();
        var kinds = $('input:radio[name="radio1"]:checked').val();
        var address = $("select").val();
        var detailaddress = $("#detailaddress").val();
        var salary = $("#salary").val();
        $.post("updateModifyBusiness",{
            businessid: id,
            businessname: name,
            phone: phone,
            businesskinds: kinds,
            businessaddress: address,
            detailaddress: detailaddress,
            salary:salary
        },function (data) {
            if(data.num>0){
                window.location.href="centerDetailsPage.jsp";
            }else{
                alert("修改失败！");
            }

        },"json");

    })
})

/*当输入金额的时候 失去焦点 提示金额必须是数字并且金额不能过万*/
$("#salary").blur(function () {
    var num = $("#salary").val();
    var n = /^[0-9]*$/;
    if(!n.test(num)){
            $("#checkisnum").text("必须是正数");
    }else if(num.length>5){
        $("#checkisnum").text("不能过万");
    }else if(num==""){
        $("#checkisnum").text("必须输入金额数");
    }
    else{
        $("#checkisnum").text("√");
    }
})

