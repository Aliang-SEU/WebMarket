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
                    }else{
                        location.href = prevLink;
                    }
                }
            }else{
                alert("登录信息错误");
            }

        },"json");
    });

});