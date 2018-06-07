function getCookie(name) {
    var cookie = document.cookie;
    var arrcookie = cookie.split(";");
    for(var i = 0; i < arrcookie.length; i++){
        var key = arrcookie[i].split("=");
        if(key[0] == name){
            return key[1];
        }
    }
    return "";
}

function getLoginState(){
    var loginToken = getCookie("loginToken");

    //loginToken不为空
    if(loginToken != null ){
        $.get("/getLoginState",{"loginToken":loginToken} , function(result){
            if(result != null && result.success == true){
                localStorage.setItem("username", result.data.username);
                $("#userState").html("欢迎您:<a onclick=\"alterData()\" id='userName'>" + result.data.username  + " <span class='sep'> | </span>  \
                            <a href=\"/logOut\"> 注销 </a> " + " <span class='sep'> | </span> \
                            <a href=\"/order/toOrder\" target='_blank'>我的订单</a>");
            }else{
                $("#userState").html("<a href=\"/toLogin\" >亲,请登陆</a>" + "<span class='sep'> | </span> \
                    <a onclick=\"dueToLogin()\" style='cursor: pointer' >我的订单</a>");
            }
        });
    }else{
        alter("请您先登录");
        window.open("/toLogin", "_black")
    }
}

//修改用户的个人资料
function alterData(){

    var username = localStorage.getItem("username");
    var loginToken = getCookie("loginToken");
    var url = '/alterData?loginToken=' + loginToken;
    window.open(url);

}

function dueToLogin() {
    alert("请先登录");
    window.open("/toLogin", "_black")
}

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