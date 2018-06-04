$(function(){

    var loginButton = $("#loginButton");

    loginButton.click(function(){
        console.log("点击了登录按钮");
        //数据转化
        var data = $("#loginForm").serialize();

        $.post("/login", data, function(response){
            if(response != null && response.success == true){
                localStorage.setItem("username", response.data.userInfo.username);
                alert("登录成功");
                var prevLink = document.referrer;
                if($.trim(prevLink)==''){
                    location.href = '/';
                }else{
                    if(prevLink.indexOf('toRegister.html') != -1){      //来自注册页面
                        location.href = '/';
                    }
                    location.href = prevLink;
                }
            }else{
                alert("登录信息错误");
            }

        },"json");
    });

});