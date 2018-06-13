var myApp = angular.module("myApp", []);

myApp.controller("checkController", function ($scope, $http) {

    $scope.getOrderInfo = function (index) {
        $scope.orderInfo = $scope.ordersUnPay[index];
        $scope.password = "";
        $scope.errorInfo = "";
    }
    //支付
    $scope.pay = function () {
        //原先弹出一个对话框来确认该支付信息
        var username = localStorage.getItem("userName")
        var password = $scope.password;
        if (password == null || password === "") {
            $scope.errorInfo = "密码不能为空";
            return;
        }
        var data = {
            "username": username,
            "password": password
        }
        //先进行密码校验
        $http.post("/checkPassword", data).success(function (response) {
            if (response.success == true) {
                $http.get("/order/pay/?orderId=" + $scope.orderInfo.orderId)
                    .success(function (response) {
                        alert(response.message);
                        //校验成功更新页面
                        $http.get("/order/queryAllOrder/" + userId).success(function (response) {
                            if (response != null && response.success == true) {
                                wrapperData($scope, response);
                            }
                        })
                    })
                var close = angular.element("#closeModal");
                close.click();
            } else {
                $scope.errorInfo = response.message;
            }
        })
    }

    //确认收货
    $scope.receive = function (index) {
        $http.get("/order/receive/?orderId=" + $scope.ordersTransport[index].orderId)
            .success(function (response) {
                alert(response.message);
                $http.get("/order/queryAllOrder/" + userId).success(function (response) {
                    if (response != null && response.success == true) {
                        wrapperData($scope, response);
                    }
                })
            })
    }
    $scope.orderState = {0: "待付款", 1: "订单已付款,待发货", 2: "订单已发货", 3: "订单已完成"}
    var userId = localStorage.getItem("userId");

    $http.get("/order/queryAllOrder/" + userId).success(function (response) {
        if (response != null && response.success == true) {
            console.log(response.data);
            wrapperData($scope, response);
        }
    })

    //数据包装
    var wrapperData = function ($scope, response) {
        $scope.ordersAll = response.data;
        $scope.ordersUnPay = new Array()
        $scope.ordersUnHandle = new Array()
        $scope.ordersTransport = new Array()
        $scope.ordersReceive = new Array()
        for (var i = 0; i < response.data.length; i++) {
            switch (response.data[i].orderState) {
                case 0:
                    $scope.ordersUnPay.push(response.data[i]);
                    break;
                case 1:
                    $scope.ordersUnHandle.push(response.data[i]);
                    break;
                case 2:
                    $scope.ordersTransport.push(response.data[i]);
                    break;
                case 3:
                    $scope.ordersReceive.push(response.data[i]);
                    break;
            }
        }
        $scope.unPayCount = $scope.ordersUnPay.length;
        $scope.unHandleCount = $scope.ordersUnHandle.length;
        $scope.transportCount = $scope.ordersTransport.length;
        $scope.receiveCount = $scope.ordersReceive.length;
        $scope.allCount = $scope.ordersAll.length;
    }
})
