//应用
var myApp = angular.module('adminApp', ['ui.bootstrap', 'ui.router', 'tm.pagination']);

//路由重定向
myApp.config(function ($stateProvider) {
        $stateProvider
            .state('0', {
                url: '/orderManager',
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

myApp.controller("adminController", function ($rootScope, $modal, $scope, $http, $timeout, $interval, $state, $injector, GoodService) {
    $state.go('welcome');

    $scope.orderState = {0: "待付款", 1: "订单已付款,待发货", 2: "订单已发货", 3: "订单已完成"}
    //左侧栏菜单页面
    $scope.menuArray = new Array('订单管理', '用户管理', '商品管理');
    $http.get("/webmarket/queryGoodType").success(function (response) {
        $scope.GoodType = response.data;
    })
    //时间模块
    $scope.current_time = new Date();
    $interval(function () {
        $scope.current_time = new Date();
    }, 1000);

    $scope.chSelectMenu = function (index) {
        $scope.selectMenu = index;
        //切换页面
        $state.go(index.toString())
        updatePage(index)
    }

    var updatePage = function (index) {
        switch (index) {
            case 0:
                $http.get("/webmarket/adminIndex/queryShoppingOrder").success(function (response) {
                    $scope.orderlist = response.data;
                })
                break;
            case 1:
                $http.get("/webmarket/adminIndex/queryUserInfo").success(function (response) {
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

myApp.controller('orderManager', function ($rootScope, $modal, $scope, $http, $timeout, $interval, $state, $injector, GoodService) {
    $scope.sendOrder = function (index) {
        $http.get("/webmarket/order/sendOrder?orderId=" + $scope.orderlist[index].orderId).success(function (resposne) {
            if (resposne.success = true) {
                $scope.orderlist[index].orderState += 1;
            }
            alert(resposne.message);
        })
    }
})

myApp.factory('GoodService', function ($http) {
    return {
        getList: function (condition) {
            return $http.post("/webmarket/good/GetGoodList", condition);
        },
        getListCount: function (name) {
            return $http.get(name);
        }
    };
});

myApp.controller('goodManagerController', function ($scope, $modal, GoodService, $http) {

    $scope.upload = function (file) {

    }

    var getAllGoods = function () {

        var postData = {
            curPage: $scope.paginationConf.currentPage,
            pageSize: $scope.paginationConf.itemsPerPage
        }
        GoodService.getListCount("/webmarket/good/GetGoodCount").success(function (response) {
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
    $scope.$watch('paginationConf.currentPage', getAllGoods);


    //修改商品的信息模态框
    $scope.alterGoodInfo = function (index) {
        var good = Object.assign({}, $scope.goodlist[index]);
        good.types = $scope.GoodType;
        var modalInstance = $modal.open({
            templateUrl: 'alterGoodInfo.html',//script标签中定义的id
            controller: 'modalCtrl',//modal对应的Controller
            size: "lg",
            resolve: {
                data: function () {//data作为modal的controller传入的参数
                    return good;//用于传递数据,注意传递拷贝值
                }
            }
        })
        //确认之后向数据库修改商品信息
        modalInstance.result.then(function (data) {
            //修改数据库的值
            data.type = data.type.type
            var file = data.files;
            /**
             * 首先上传文件
             */
            var form = new FormData();
            form.append('file', file);
            $http({
                method: 'POST',
                url: '/good/uploadImage',
                data: form,
                headers: {'Content-Type': undefined},
                transformRequest: angular.identity
            }).success(function (response) {
                if (response.success === true) {
                    data.goodImage = response.data.imageName;
                    //修改商品信息
                    $http.post("/good/alterGoodInfo", data).success(function (response) {
                        if (response.success = true) {
                            $scope.goodlist[index] = data;
                        }
                        alert(response.message);
                    })
                } else {
                    alert(response.message);
                }
            }).error(function (data) {
                alert(response.message);
            })
        })
    }

    $scope.deleteGoodInfo = function (index) {
        if (window.confirm("你确定要删除该商品的吗")) {
            var good = Object.assign({}, $scope.goodlist[index]);
            $http.post("/good/deleteGoodInfo", good).success(function (response) {
                if (response.success = true) {
                    alert(response.message)
                    $scope.goodlist.splice(index, 1);
                    if ($scope.goodlist.length === 0) {
                        var postData = {
                            curPage: $scope.paginationConf.currentPage - 1,
                            pageSize: $scope.paginationConf.itemsPerPage
                        }
                        GoodService.getListCount("/good/GetGoodCount").success(function (response) {
                            $scope.paginationConf.totalItems = response.data;
                        })
                        GoodService.getList(postData).success(function (response) {
                            $scope.goodlist = response.data;
                        });
                    } else {
                        getAllGoods();
                    }
                } else {
                    alert("该商品已有订单加入，无法删除")
                }
            })
        }

    }

    $scope.addGoodInfo = function () {
        var good = new Object();
        good.types = $scope.GoodType;
        var modalInstance = $modal.open({
            templateUrl: 'alterGoodInfo.html',//script标签中定义的id
            controller: 'modalCtrl',//modal对应的Controller
            size: "lg",
            resolve: {
                data: function () {//data作为modal的controller传入的参数
                    return good;//用于传递数据,注意传递拷贝值
                }
            }
        })

        //确认之后向数据库修改商品信息
        modalInstance.result.then(function (data) {
            //修改数据库的值
            data.type = data.type.type
            var file = data.files;
            /**
             * 首先上传文件
             */
            var form = new FormData();
            form.append('file', file);
            $http({
                method: 'POST',
                url: '/good/uploadImage',
                data: form,
                headers: {'Content-Type': undefined},
                transformRequest: angular.identity
            }).success(function (response) {
                if (response.success === true) {
                    data.goodImage = response.data.imageName;

                    $http.post("/good/addGoodInfo", data).success(function (response) {
                        alert(response.message);
                    })
                } else {
                    alert(response.message);
                }
            }).error(function (response) {
                alert(response.message);
            })

        })
    }
})
myApp.controller('modalCtrl', function ($scope, $modalInstance, data) {
    $scope.good = data;

    $scope.fileChanged = function (ele) {

        var filename = ele.files[0].name;
        var filetype = ele.files[0].type;

        var index = filename.indexOf("."); //得到"."在第几位
        var img_id = filename.substring(index); //截断"."之前的，得到后缀

        if (img_id != ".bmp" && img_id != ".png" && img_id != ".gif" && img_id != ".jpg" && img_id != ".jpeg" &&
            img_id != ".BMP" && img_id != ".PNG" && img_id != ".GIF" && img_id != ".JPG" && img_id != ".JPEG") {
            alert("图片类型不对");
            return;
        } else {
            $scope.files = ele.files[0];
            $scope.good.goodImage = $scope.files.name
            console.log(ele.files)
            $scope.$apply(); //传播Model的变化。
        }
    }

    //在这里处理要进行的操作
    $scope.ok = function () {
        $scope.good.files = $scope.files;
        $modalInstance.close($scope.good);
    };

    $scope.cancel = function () {
        $modalInstance.dismiss('cancel');
    }
});
