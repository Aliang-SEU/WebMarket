//应用
var myApp = angular.module('adminApp', ['ui.bootstrap', 'ui.router']);

//路由重定向
myApp.config(function($stateProvider){
        $stateProvider
            .state('0', {
                url:'/orderManager',
                templateUrl: 'tmpl/orderManager.html',
            })
            .state('1', {
                url: '/userManager',
                templateUrl: 'tmpl/userManager.html',
            })
            .state('2', {
                url: '/goodManager',
                templateUrl: 'tmpl/goodManager.html'
            })
            .state('welcome', {
                url: '/welcome',
                templateUrl: "tmpl/adminWelcome"
            })
    }
);


myApp.controller("adminController", function ($rootScope, $modal, $scope, $http, $timeout, $interval, $state, $injector) {
    $state.go('welcome');
    $injector.get('$templateCache').removeAll();

    $scope.orderState = {0:"待付款", 1:"订单已付款,待发货", 2:"订单已发货", 3:"订单已完成"}
    //左侧栏菜单页面
    $scope.menuArray = new Array('订单管理', '用户管理', '商品管理' );

    //时间模块
    $scope.current_time = new Date();
    $interval(function () {
        $scope.current_time = new Date();
    }, 1000);

    $scope.chSelectMenu = function (index) {
        $scope.selectMenu= index;
        //切换页面
        $state.go(index.toString())
        updatePage(index)
    }

    var updatePage = function (index) {
        switch (index){
            case 0:
                $http.get("/adminIndex/queryShoppingOrder").success(function (response) {
                    $scope.orderlist = response.data;
                })
                break;
            case 1:
                $http.get("/adminIndex/queryUserInfo").success(function (response) {
                    $scope.userlist = response.data;
                })
                break;
            case 2:
                $http.get("/queryGoodType").success(function (response) {
                    $scope.GoodType = response.data;
                })
                $http.get("/adminIndex/queryAllGood").success(function (response) {
                    $scope.goodlist = response.data;
                })
                break;
        }
    }

    //修改商品的信息
    $scope.alterGoodInfo = function(index){
        var modalInstance = $modal.open({
            templateUrl : 'adminController.html',//script标签中定义的id
            controller : 'modalCtrl',//modal对应的Controller
            size:"xl",
            resolve : {
                data : function() {//data作为modal的controller传入的参数
                    return "213";//用于传递数据
                }
            }
        })

        //确认之后向数据库修改商品信息
        modalInstance.result.then(function(data){

        })
    }
});

myApp.controller('modalCtrl', function($scope, $modalInstance, data) {
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