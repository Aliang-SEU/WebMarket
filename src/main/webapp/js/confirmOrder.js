var app  = angular.module("myApp",  ['ui.bootstrap']);
app.controller("confirmController", function ($scope, $http, $modal){

    $scope.goodInfo = goodInfo;

    $http.get("/queryAddress/" + $scope.goodInfo.userId).success(function (response) {
        $scope.addressList = response.data;

    })

    $scope.$watch($scope.goodInfo, function () {
        var number = $scope.goodInfo.goodCounts;
        var price = $scope.goodInfo.price;
        $scope.totalPrice = parseFloat(number) * parseFloat(price)

    })

    $scope.deleteAddress = function(addressId){
        if (window.confirm('确认删除该地址？')) {
            $http.get("/deleteAddress/" + addressId).success(function (response) {
                if (response.success == true) {
                    $http.get("/queryAddress/" + $scope.goodInfo.userId).success(function (response) {
                        $scope.addressList = response.data;
                    })
                }
            })
        }
    }
    $scope.selectAddress  = function(index){
        //alert(index)
        $scope.selectAddIndex = index;
        $scope.selectAdd = $scope.addressList[index]
        console.log( $scope.selectAdd )
    }
    //确认订单
    $scope.confirmOrder = function(){
        if($scope.addressList == null || $scope.addressList.length  == 0 || $scope.selectAddIndex == null){
            alert("请先选择一个收货地址")
            return;
        }
        if (window.confirm('确认提交订单？')){
            //订单数据
            var orderData = {
                userId: localStorage.getItem("userId"),
                goodId: $scope.goodInfo.goodId,
                orderState: 0,
                goodPrice: $scope.goodInfo.price,
                counts:$scope.goodInfo.goodCounts,
                goodName:$scope.goodInfo.goodName,
                orderAddress:$scope.selectAdd.address,
                receiveName:$scope.selectAdd.receiveName,
                phone:$scope.selectAdd.phone
            }

            StandardPost("/order/createOrder", orderData);
        }
    }
    //添加一个新的地址
    $scope.addNewAddress = function(){
        var modalInstance = $modal.open({
            templateUrl : 'addNewAdd.html',//script标签中定义的id
            controller : 'modalCtrl',//modal对应的Controller
            size:"xl",
            resolve : {
                data : function() {//data作为modal的controller传入的参数
                    return $scope.data;//用于传递数据
                }
            }
        })

        //确认之后向数据库添加地址信息
        modalInstance.result.then(function(data){
            console.log(data)
            data.userId = $scope.goodInfo.userId;
            $http.post("/addAddress", data).success(function(){
                $http.get("/queryAddress/" + $scope.goodInfo.userId).success(function (response) {
                    $scope.addressList = response.data;
                })
            })
        })
    }
});
//模态框对应的Controller
app.controller('modalCtrl', function($scope, $modalInstance, data) {
    $scope.data= data;

    //在这里处理要进行的操作
    $scope.ok = function(data) {
        $scope.data= data;
        $modalInstance.close( $scope.data);
    };
    $scope.cancel = function() {
        $modalInstance.dismiss('cancel');
    }
});