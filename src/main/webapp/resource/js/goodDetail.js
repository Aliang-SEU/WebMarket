var app = angular.module("myApp", []);

app.controller("goodDetailCtrl", function ($scope, $http) {
    $http.get("/good/detail/goodId").success(function (response) {
        $scope.good = response.data;
    }).error(function (resposne) {
        alert("数据库错误");
    })
})