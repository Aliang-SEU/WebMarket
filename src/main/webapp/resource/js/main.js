//页面加载的时候执行的函数
$(function () {
    getLoginState();
});


/**
 * 获取登录的状态
 */

//修改用户的个人资料
function alterData(){

    var username = localStorage.getItem("username");
    var loginToken = getCookie("loginToken");
    var url = 'alterData?loginToken=' + loginToken;
    window.open(url);

}