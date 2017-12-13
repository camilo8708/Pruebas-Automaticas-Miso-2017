app.controller("resultadoE2EController", function ($scope, $http, sessionService, ngTableParams, $log, $filter, $routeParams) {
    $scope.id = $routeParams.id;
    $scope.resultado = false;
    $scope.data = [];
    $scope.numNavegadores = 0;


    if ($routeParams.id != undefined) {
        $http({method: "GET", url: "/resultadoE2E/" +  $scope.id})
            .success(function (data, status) {
                if(data["chrome"] != undefined){
                    nav = JSON.parse(data["chrome"]);
                    nav["navegador"] = "Chrome";
                    nav["visible"] = false;
                    $scope.data.push(nav)
                }

                if(data["firefox"] != undefined){
                    nav = JSON.parse(data["firefox"]);
                    nav["navegador"] = "Firefox";
                    nav["visible"] = false;
                    $scope.data.push(nav)
                }

                if(data["safari"] != undefined){
                    nav = JSON.parse(data["safari"]);
                    nav["navegador"] = "Safari";
                    nav["visible"] = false;
                    $scope.data.push(nav)
                }

                if(data["opera"] != undefined){
                    nav = JSON.parse(data["opera"]);
                    nav["navegador"] = "Opera";
                    nav["visible"] = false;
                    $scope.data.push(nav)
                }

                if(data["ie"] != undefined){
                    nav = JSON.parse(data["ie"]);
                    nav["navegador"] = "IE";
                    nav["visible"] = false;
                    $scope.data.push(nav)
                }

                $scope.resultado = true;
            }).error(function (data, status) {
            $log.error(data);
        });
    }

    $scope.visible = function(hide){
        for(ct = 0; ct < $scope.data.length; ct++){
            if($scope.data[ct].navegador === hide){
                $scope.data[ct].visible = !$scope.data[ct].visible;
            }
        }
    }
});