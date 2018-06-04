$(function(){

});


var myApp = angular.module("myApp", []);

myApp.controller("checkController", function ($scope, $http) {

    $scope.orderState = {0:"待付款", 1:"订单已付款,待发货", 2:"订单已发货", 3:"订单已完成"}
    var userId = localStorage.getItem("userId");
    $http.get("/order/queryAllOrder/" + userId).success(function (response) {
        if(response != null && response.success == true){
            console.log(response.data)
            $scope.ordersAll = response.data;
            $scope.ordersUnPay = new Array()
            $scope.ordersUnHandle = new Array()
            $scope.ordersTransport = new Array()
            $scope.ordersReceive = new Array()
            for(var i = 0; i < response.data.length; i++){
                switch(response.data[i].orderState){
                    case 0:
                        $scope.ordersUnPay.push(response.data[i]); break;
                    case 1:
                        $scope.ordersUnHandle.push(response.data[i]);break;
                    case 2:
                        $scope.ordersTransport.push(response.data[i]);break;
                    case 3:
                        $scope.ordersReceive.push(response.data[i]);break;

                }
            }
            $scope.unPayCount = $scope.ordersUnPay.length;
            $scope.unHandleCount = $scope.ordersUnHandle.length;
            $scope.transportCount = $scope.ordersTransport.length;
            $scope.receiveCount = $scope.ordersReceive.length;
            $scope.allCount = $scope.ordersAll.length;

        }else{

        }
    })
})
