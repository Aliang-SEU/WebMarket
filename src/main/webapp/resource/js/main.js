
$(function () {
    getLoginState();
});


/**
 * 获取登录的状态
 */
function getLoginState(){
    var loginToken = getCookie("loginToken");

    //loginToken不为空
    if(loginToken != null){
        $.get("/getLoginState",{"loginToken":loginToken} , function(result){
            if(result != null && result.success == true){
                $("#userState").html("欢迎您:<a href=\"/toLogin\" >" + result.data.username  + " <span class='sep'> | </span>  \
                            <a href=\"/logOut\"> 注销 </a> " + " <span class='sep'> | </span> \
                            <a href=\"#\" >我的订单</a>");
                return;
            }else{
                $("#userState").html("<a href=\"/toLogin\" >亲,请登陆</a>" + "<span class='sep'> | </span> \
                    <a href=\"#\" >我的订单</a>");
            }
        });
    }
}
