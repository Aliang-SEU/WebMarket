//页面加载的时候执行的函数
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
                localStorage.setItem("username", result.data.username);
                $("#userState").html("欢迎您:<a onclick=\"alterData()\" id='userName'>" + result.data.username  + " <span class='sep'> | </span>  \
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

//修改用户的个人资料
function alterData(){
    var username = localStorage.getItem("username");
    var loginToken = getCookie("loginToken");
    var url = 'alterData?loginToken=' + loginToken;
    window.open(url);

}