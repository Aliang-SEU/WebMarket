//页面加载的时候执行的函数
$(function () {
    getLoginState();
});
var app = angular.module('myApp', ['tm.pagination']);

//变量初始化
app.run(function ($rootScope) {
    //初始化一个选择商品类型的全局变量
    $rootScope.selType = 1;
});

// 在controller初始化的时候，注册ListFactory服务
app.controller('goodListCtrl', function ($window, $scope, $http, $rootScope, GoodService) {
    $scope.itemsToShow = 'typeResult';

    $http.get("/queryGoodType").success(function (response) {
        $scope.goodTypes = response.data;
    });

    $scope.ShowPages = function (type) {
        //广播选中的商品类型
        $scope.itemsToShow = 'typeResult';
        $rootScope.selType = type;
    }

    $scope.searchGood = function (keyWords) {
        $scope.searchKeyWords = keyWords;
        $http.get('/good/searchGood/?keyWords=' + keyWords + "&page=1&pageSize=12").success(function (response) {
            $scope.paginationConf.currentPage = 1;
            $scope.itemsToShow = 'searchResult';
            $scope.paginationConf.totalItems = parseInt(response.message);
            $scope.items = response.data;
        })
    }
    var getSearchGood = function(){

        var postData = {
            type:$rootScope.selType,
            curPage: $scope.paginationConf.currentPage,
            pageSize: $scope.paginationConf.itemsPerPage
        }
        $http.get('/good/searchGood/?keyWords=' + $scope.searchKeyWords + "&page="
            +  $scope.paginationConf.currentPage
            + "&pageSize=" + $scope.paginationConf.itemsPerPage).success(function (response) {
            $scope.paginationConf.totalItems = parseInt(response.message);
            $scope.items = response.data;
        })
    }
    var getFirstPage = function(){
        $scope.paginationConf.currentPage = 1;
        var postData = {
            type:$rootScope.selType,
            curPage: $scope.paginationConf.currentPage,
            pageSize: $scope.paginationConf.itemsPerPage
        }
        GoodService.getListCount($rootScope.selType).success(function (response) {
            $scope.paginationConf.totalItems = response.data;
        })
        GoodService.getList(postData).success(function (response) {
            console.log($scope.paginationConf.currentPage);
            $scope.items = response.data;
        });
    }
    var getAllGoods = function () {

        var postData = {
            type:$rootScope.selType,
            curPage: $scope.paginationConf.currentPage,
            pageSize: $scope.paginationConf.itemsPerPage
        }
        GoodService.getListCount($rootScope.selType).success(function (response) {
            $scope.paginationConf.totalItems = response.data;
        })
        GoodService.getList(postData).success(function (response) {
            console.log($scope.paginationConf.currentPage);
            $scope.items = response.data;
        });

    }

    // 配置分页的基本参数，分页控件的初始化
    $scope.paginationConf = {
        currentPage: 1,
        totalItems: 0, // 一共多少条数据，和itemsPerPage决定一共会有几页
        itemsPerPage: 12, // 每页几条数据，和totalItems决定一共会有几页
        pagesLength: 5,
    };
    $scope.$watch('paginationConf.currentPage', function(){
        if($scope.itemsToShow === 'typeResult'){
            getAllGoods();
        }else if($scope.itemsToShow === 'searchResult'){
            getSearchGood();
        }
    });
    $scope.$watch('selType', getFirstPage);

    $scope.toDetailPage = function (id) {
        var href = '/good/GoodDetail?goodId=' + id;
        window.open(href);
    }
});
app.factory('GoodService', function ($http) {
    return {
        getList: function (condition) {
            return $http.post("/good/GetResult", condition);
        },
        getListCount: function (condition) {
            return $http.get("/good/GetResultCount/" + condition);
        }
    };
});
/*
app.controller('goodListCtrl', function ($scope, $http, $rootScope) {

    //观察selType变量的变化 动态刷新界面
    $scope.$watch('selType', function (newValue, oldValue) {
        var url = "/good/GetResult/" + $rootScope.selType;
        var numForEachPage = 20;
        $http.get(url).success(function (response) {
            $scope.data = response.data;
            $scope.pageSize = numForEachPage;
            $scope.pages = Math.ceil($scope.data.length / $scope.pageSize);
            $scope.newPages = $scope.pages > numForEachPage ? numForEachPage : $scope.pages;
            $scope.pageList = [];
            $scope.selPage = 1;
            $scope.setData = function () {
                $scope.items = $scope.data.slice(($scope.pageSize * ($scope.selPage - 1)),
                    ($scope.selPage * $scope.pageSize));//通过当前页数筛选出表格当前显示数据
            }
            $scope.items = $scope.data.slice(0, $scope.pageSize);

            for (var i = 0; i < $scope.newPages; i++) {
                $scope.pageList.push(i + 1);
            }

            $scope.selectPage = function (page) {
                //不能小于1大于最大
                if (page < 1 || page > $scope.pages)
                    return;
                //最多显示5个分页数目
                if (page > 2) {
                    var newpageList = [];
                    for (var i = (page - 3); i < ((page + 2) > $scope.pages ? $scope.pages : (page + 2)); i++) {
                        newpageList.push(i + 1);
                    }
                    $scope.pageList = newpageList;
                }

                $scope.selPage = page;
                $scope.setData();
                $scope.isActivePage(page);
                console.log("选择的页：" + page);
            };
            //设置当前选中页的样式
            $scope.isActivePage = function (page) {
                return $scope.selPage = page;
            }
            $scope.Previous = function () {
                $scope.selectPage($scope.selPage - 1);
            }
            $scope.Next = function () {
                $scope.selectPage($scope.selPage + 1);
            }
        });
    });
});
*/
