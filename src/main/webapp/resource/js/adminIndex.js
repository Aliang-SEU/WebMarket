//应用
var myApp = angular.module('adminApp', ['ui.bootstrap', 'ui.router','tm.pagination']);

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
                templateUrl: 'tmpl/goodManager.html',
                controller: 'goodManagerController'
            })
            .state('welcome', {
                url: '/welcome',
                templateUrl: "tmpl/adminWelcome"
            })
    }
);


myApp.controller("adminController", function ($rootScope, $modal, $scope, $http, $timeout, $interval, $state, $injector,GoodService) {
    $state.go('welcome');

    $scope.orderState = {0:"待付款", 1:"订单已付款,待发货", 2:"订单已发货", 3:"订单已完成"}
    //左侧栏菜单页面
    $scope.menuArray = new Array('订单管理', '用户管理', '商品管理' );
    $http.get("/queryGoodType").success(function (response) {
        $scope.GoodType = response.data;
    })
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
                /*$http.get("/adminIndex/queryAllGood").success(function (response) {
                    $scope.goodlist = response.data;
                })*/
                break;
        }
    }
});

myApp.factory('GoodService', function ($http) {
    return {
        getList: function (condition) {
            return $http.post("/good/GetGoodList", condition);
        },
        getListCount: function (name) {
            return $http.get(name);
        }
    };
});

myApp.controller('goodManagerController', function ($scope, $modal, GoodService) {

    var getAllGoods = function () {

        var postData = {
            curPage: $scope.paginationConf.currentPage,
            pageSize: $scope.paginationConf.itemsPerPage
        }
        GoodService.getListCount("/good/GetGoodCount").success(function (response) {
            $scope.paginationConf.totalItems = response.data;
        })
        GoodService.getList(postData).success(function (response) {
            console.log($scope.paginationConf.currentPage);
            $scope.goodlist = response.data;
        });

    }

    // 配置分页的基本参数，分页控件的初始化
    $scope.paginationConf = {
        currentPage: 1,
        totalItems: 0, // 一共多少条数据，和itemsPerPage决定一共会有几页
        itemsPerPage: 4, // 每页几条数据，和totalItems决定一共会有几页
        pagesLength: 5
    };
    $scope.$watch('paginationConf.currentPage',getAllGoods);


    //修改商品的信息模态框
    $scope.alterGoodInfo = function(index){
        var modalInstance = $modal.open({
            templateUrl : 'alterGoodInfo.html',//script标签中定义的id
            controller : 'modalCtrl',//modal对应的Controller
            size:"lg",
            resolve : {
                data : function() {//data作为modal的controller传入的参数
                    return Object.assign({},$scope.goodlist[index]);//用于传递数据,注意传递拷贝值
                }
            }
        })
        //确认之后向数据库修改商品信息
        modalInstance.result.then(function(data){
            $scope.goodlist[index] = data;
            //修改数据库的值
            $http.post("")
        })
    }
})
myApp.controller('modalCtrl', function($scope, $modalInstance, data) {
    $scope.good= data;

    //在这里处理要进行的操作
    $scope.ok = function() {
        $modalInstance.close($scope.good);
    };

    $scope.cancel = function() {
        $modalInstance.dismiss('cancel');
    }
});
