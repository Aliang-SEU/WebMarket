
$(function () {
    getLoginState();
})

var href = location.href; //取得整个地址栏
var goodId = href.substr(href.indexOf("=") + 1);
var app = angular.module("myApp", []);

app.controller("goodDetailCtrl", function ($scope, $http) {

    $scope.productCounts = 1;
    $http.get("/webmarket/good/GoodDetail/"+goodId).success(function (response) {
        $scope.good = response.data;

        $http.get("/webmarket/queryGoodType/" + $scope.good.type).success(function (response) {
            $scope.type = response.data;
        });

        console.log(response.data)
    }).error(function (resposne) {
        alert("数据库错误");
    })
    
    $scope.changeNumber = function () {
        //先把非数字的都替换掉，除了数字和.
        //$scope.productCounts  = $scope.productCounts.replace(/[^\d]/g,"");
        var value  = $scope.productCounts;
        value = value.replace(/[^\d]/g,"");
        if(value >= $scope.good.counts){
            $scope.productCounts = $scope.good.counts;
        }else if (value < 1){
            $scope.productCounts = 1;
        }else{
            $scope.productCounts = value;
        }
    }
    
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
            goodName: $scope.good.name,
            orderState: 0,
            goodPrice: $scope.good.price,
            counts:$scope.productCounts
        }

        localStorage.setItem("order", JSON.stringify(orderData));

        StandardPost("/webmarket/order/confirmOrder", orderData);
    }
})
