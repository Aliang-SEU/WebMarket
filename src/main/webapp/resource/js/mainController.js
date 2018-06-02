var app = angular.module('myApp',[]);
app.run(function($rootScope) {
    //初始化一个选择商品类型的全局变量
    $rootScope.selType = 1;
});
app.controller('goodTypeCtrl', function($scope, $http, $rootScope) {

    $http.get("/queryGoodType").success(function (response)
    {$scope.goodTypes = response.data;});

    $scope.ShowPages = function(type){
        //广播选中的商品类型
        $rootScope.selType = type;
    }
});

app.controller('goodListCtrl', function ($scope, $http, $rootScope) {

    //观察selType变量的变化 动态刷新界面
    $scope.$watch('selType', function(newValue,oldValue){
        var url = "/good/" + $rootScope.selType;
        var numForEachPage = 20;
        $http.get(url).success(function (response){
            $scope.data = response.data;
            $scope.pageSize = numForEachPage;
            $scope.pages = Math.ceil($scope.data.length / $scope.pageSize);
            $scope.newPages = $scope.pages > numForEachPage ? numForEachPage : $scope.pages;
            $scope.pageList = [];
            $scope.selPage = 1;
            $scope.setData = function(){
                $scope.items = $scope.data.slice(($scope.pageSize * ($scope.selPage - 1)),
                    ($scope.selPage * $scope.pageSize));//通过当前页数筛选出表格当前显示数据
            }
            $scope.items = $scope.data.slice(0, $scope.pageSize);

            for(var i = 0; i < $scope.newPages; i++){
                $scope.pageList.push(i + 1);
            }

            $scope.selectPage = function(page){
                //不能小于1大于最大
                if(page < 1 || page > $scope.pages)
                    return ;
                //最多显示5个分页数目
                if(page > 2){
                    var newpageList = [];
                    for (var i = (page - 3) ; i < ((page + 2) > $scope.pages ? $scope.pages : (page + 2)) ; i++) {
                        newpageList.push(i + 1);
                    }
                    $scope.pageList = newpageList;
                }

                $scope.selPage  = page;
                $scope.setData();
                $scope.isActivePage(page);
                console.log("选择的页：" + page);
            };
            //设置当前选中页的样式
            $scope.isActivePage = function(page){
                return $scope.selPage=page;
            }
            $scope.Previous = function(){
                $scope.selectPage($scope.selPage - 1);
            }
            $scope.Next = function(){
                $scope.selectPage($scope.selPage + 1);
            }
        });
    });

});