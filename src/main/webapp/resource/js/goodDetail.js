
$(function () {
    getLoginState();
})

var href = location.href; //取得整个地址栏
var goodId = href.substr(href.indexOf("=") + 1);
var app = angular.module("myApp", []);

app.controller("goodDetailCtrl", function ($scope, $http) {
    $http.get("/good/GoodDetail/"+goodId).success(function (response) {
        $scope.good = response.data;

        $http.get("/queryGoodType/" + $scope.good.type).success(function (response) {
            $scope.type = response.data;
        });

        console.log(response.data)
    }).error(function (resposne) {
        alert("数据库错误");
    })

    $scope.addCounts = function (){
        if($scope.productCounts == $scope.good.counts){
            return;
        }else {
            $scope.productCounts += 1;
        }
    }
    $scope.subCounts = function () {
        if($scope.productCounts == 1){
            return;
        }else{
            $scope.productCounts -= 1;
        }
    }
    //购买商品页面
    $scope.buyConfirm = function () {

        var orderData = {
            userId: localStorage.getItem("userId"),
            goodId: $scope.good.goodId,
            time: Date.now(),
            orderState: 0,
            goodPrice: $scope.good.price,
            counts:$scope.productCounts
        }

        StandardPost("/order/confirmOrder", {
            userId: localStorage.getItem("userId"),
            goodId: $scope.good.goodId,
            goodName: $scope.good.name,
            orderState: 0,
            goodPrice: $scope.good.price,
            counts:$scope.productCounts
        });
    }
})
