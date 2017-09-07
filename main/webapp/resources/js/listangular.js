var app = angular.module("myApp", ["ngRoute"]);
app.config(function($routeProvider) {
    $routeProvider
    .when("/", {
        templateUrl : "/resources/cities/seoul.html", controller:'cityCtrl'
    })
    .when("/seoul", {
        templateUrl : "/resources/cities/seoul.html", controller:'cityCtrl'
    })
    .when("/gyeongi", {
        templateUrl : "/resources/cities/gyeonggi.html", controller:'cityCtrl'
    })
    .when("/incheon", {
        templateUrl : "/resources/cities/incheon.html", controller:'cityCtrl'
    })
    .when("/busan", {
        templateUrl : "/resources/cities/busan.html", controller:'cityCtrl'
    })
    .when("/daegu", {
        templateUrl : "/resources/cities/daegu.html", controller:'cityCtrl'
    })
    .when("/gwangju", {
        templateUrl : "/resources/cities/gwangju.html", controller:'cityCtrl'
    })
    .when("/daejeon", {
        templateUrl : "/resources/cities/daejeon.html", controller:'cityCtrl'
    })
    .when("/ulsan", {
        templateUrl : "/resources/cities/ulsan.html", controller:'cityCtrl'
    })
    .when("/sejong", {
        templateUrl : "/resources/cities/sejong.html", controller:'cityCtrl'
    })
    .when("/gangwon", {
        templateUrl : "/resources/cities/gangwon.html", controller:'cityCtrl'
    })
    .when("/gyeongnam", {
        templateUrl : "/resources/cities/gyeongnam.html", controller:'cityCtrl'
    })
    .when("/gyeongbuk", {
        templateUrl : "/resources/cities/gyeongbuk.html", controller:'cityCtrl'
    })
    .when("/jeonnam", {
        templateUrl : "/resources/cities/jeonnam.html", controller:'cityCtrl'
    })
    .when("/jeonbuk", {
        templateUrl : "/resources/cities/jeonbuk.html", controller:'cityCtrl'
    })
    .when("/chungnam", {
        templateUrl : "/resources/cities/chungnam.html", controller:'cityCtrl'
    })
    .when("/chungbuk", {
        templateUrl : "/resources/cities/chungbuk.html", controller:'cityCtrl'
    })
    .when("/jeju", {
        templateUrl : "/resources/cities/jeju.html", controller:'cityCtrl'
    })
}).controller('cityCtrl',function($scope, $http, $location){
	$scope.result = function(category){
		$scope.ctgr = category;
		return $scope.ctgr;
	};
});