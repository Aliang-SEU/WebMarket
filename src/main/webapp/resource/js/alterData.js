/*
 *  CMB Confidential
 *
 *  Copyright (C) 2016 China Merchants Bank Co., Ltd. All rights reserved.
 *
 *  No part of this file may be reproduced or transmitted in any form or by any
 *  means, electronic, mechanical, photocopying, recording, or otherwise, without
 *  prior written permission of China Merchants Bank Co., Ltd.
 */
var app = angular.module("myApp", []);
var href = location.href; //取得整个地址栏
var loginToken = href.substr(href.indexOf("=") + 1);

app.controller("goodDetailCtrl", function ($scope, $http) {
    var data = {
        "loginToken" : loginToken
    }
    $http.post("/getUserData", data).success(function (response) {
        $scope.user = response.data;
        console.log(response.data)
    }).error(function (resposne) {
        alert("数据库错误");
    })

    $scope.confirmAlter = function(data){
        var jsonData = JSON.stringify(data)

        $http.post("/alterUserData", jsonData).success(function(response){
            if(response != null && response.success == true){
                alert(response.message);
                location.href="/";
            }else{
                alert("您的登录状态无效！");
                location.href="/toLogin";
            }
        })
    }
})

