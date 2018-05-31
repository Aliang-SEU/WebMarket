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
