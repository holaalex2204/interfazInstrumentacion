'use strict';

// Declare app level module which depends on views, and components
angular.module('Monitoreo', [
  'ngRoute'
]).controller('TemperaturaCtrl', function ($scope,$http) {
	$scope.data = [];
    $http({
                method: "GET",
                url: "Temperatura/index"
            }).success(function (data, status, headers, config) {
                $scope.data = data;            
            });
            document.getElementById("morris-area-chart").innerHTML = "";
        Morris.Area({
            element: 'morris-area-chart',
            data: $scope.data,
            xkey: ['fecha'],
            ykeys: ['valor'],
            labels: ['Velocidad'],
            pointSize: 1,
            hideHover: 'auto',
            resize: true
        });
	setInterval(function()
    {
        $http({
                method: "GET",
                url: "Temperatura/index"
            }).success(function (data, status, headers, config) {
                $scope.data = data;            
            });
            document.getElementById("morris-area-chart").innerHTML = "";
        Morris.Area({
            element: 'morris-area-chart',
            data: $scope.data,
            xkey: ['fecha'],
            ykeys: ['valor'],
            labels: ['Velocidad'],
            pointSize: 1,
            hideHover: 'auto',
            resize: true
        });
    },3000 );

  
}).controller('IntensidadLuzCtrl', function ($scope,$http) {
	$scope.data=[];
    $http({
                method: "GET",
                url: "Intensidad/index"
            }).success(function (data, status, headers, config) {
                $scope.data = data;            
            });

        Morris.Area({
            element: 'morris-area-chart',
            data: $scope.data,
            xkey: ['fecha'],
            ykeys: ['valor'],
            labels: ['Intensidad'],
            pointSize: 1,
            hideHover: 'auto',
            resize: true
        });
    setInterval(function()
    {
        $http({
                method: "GET",
                url: "Intensidad/index"
            }).success(function (data, status, headers, config) {
                $scope.data = data;            
            });
            document.getElementById("morris-area-chart").innerHTML = "";
    	Morris.Area({
            element: 'morris-area-chart',
            data: $scope.data,
            xkey: ['fecha'],
            ykeys: ['valor'],
            labels: ['Temperatura'],
            pointSize: 1,
            hideHover: 'auto',
            resize: true
        });
    },3000 );
}).controller('VelocidadAngularCtrl', function ($scope) {
	$scope.data=[];
    $http({
                method: "GET",
                url: "Velocidad/index"
            }).success(function (data, status, headers, config) {
                $scope.data = data;            
            });
        Morris.Area({
            element: 'morris-area-chart',
            data: $scope.data,
            xkey: ['fecha'],
            ykeys: ['valor'],
            labels: ['Velocidad'],
            pointSize: 1,
            hideHover: 'auto',
            resize: true
        });
	setInterval(function()
    {
        $http({
                method: "GET",
                url: "Velocidad/index"
            }).success(function (data, status, headers, config) {
                $scope.data = data;            
            });
        Morris.Area({
            element: 'morris-area-chart',
            data: $scope.data,
            xkey: ['fecha'],
            ykeys: ['valor'],
            labels: ['Velocidad'],
            pointSize: 1,
            hideHover: 'auto',
            resize: true
        });
    },3000 );
  
}).controller('MainCtrl', function ($scope,$http) {
    $scope.velocidad= 10;
    $scope.intensidad= 7;
    $scope.temperatura= 5.5;
    setInterval(function()
    {
    $http({
                method: "GET",
                url: "Velocidad/actual"
            }).success(function (data, status, headers, config) {
                $scope.velocidad =data[0].valor;    
            });
            $http({
                method: "GET",
                url: "Intensidad/actual"
            }).success(function (data, status, headers, config) {
                $scope.intensidad = data[0].valor;            
            });
            $http({
                method: "GET",
                url: "Temperatura/actual"
            }).success(function (data, status, headers, config) {
                $scope.temperatura = data[0].valor;         
            });
	},3000 );
  
}).config(['$routeProvider', function($routeProvider) {
  $routeProvider.
  when('/Temperatura', {
        templateUrl: 'partials/graficaTemperatura.html',
        controller: 'TemperaturaCtrl'
      }).
  when('/IntensidadLuz', {
        templateUrl: 'partials/graficaIntensidadLuz.html',
        controller: 'IntensidadLuzCtrl'
      }).
  when('/VelocidadAngular', {
        templateUrl: 'partials/graficaVelocidadAngular.html',
        controller: 'VelocidadAngularCtrl'
      }).
  otherwise({redirectTo: '/view1'});
}]);