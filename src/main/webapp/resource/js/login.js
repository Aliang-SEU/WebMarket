$(function(){

    var loginButton = $("#loginButton");

    loginButton.click(function(){
        console.log("点击了登录按钮");
        //数据转化
        var data = $("#loginForm").serialize();

        $.post("/login", data, function(response){
            if(response != null && response.success == true){
                localStorage.setItem("userId", response.data.userInfo.userId);
                localStorage.setItem("userName", response.data.userInfo.userName);
                alert("登录成功");
                var prevLink = document.referrer;
                if($.trim(prevLink)==''){
                    location.href = '/';
                }else{
                    if(prevLink.indexOf('toRegister') != -1){      //来自注册页面
                        location.href = '/';
                    }else if(prevLink.indexOf('confirmOrder') != -1){  //来自确认订单界面
                        var orderData = localStorage.getItem("order");
                        orderData = JSON.parse(orderData);
                        orderData.userId = response.data.userInfo.userId; //防止不同用户登录这里修改用户id
                        StandardPost("/order/confirmOrder", orderData);
                    }
                    else{
                        location.href = prevLink;
                    }
                }
            }else{
                alert("登录信息错误");
            }

        },"json");
    });

});

StandardPost = function(url, args){
    var body = $(document.body),
        form = $("<form id='orderForm' method='post'></form>"),
        input;
    form.attr({"action":url});
    for (arg in args){
        var input = $("<input type='hidden'>");
        input.attr({"name":arg});
        input.val(args[arg]);
        form.append(input);
    }

    form.appendTo(document.body);
    form.submit();
    document.body.removeChild(form[0]);
}