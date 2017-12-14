app.controller("gremlinController", function ($scope, $http, sessionService, ngTableParams, $log, $filter, $routeParams) {
    $scope.gremlin = {};
    $scope.gremlin.url = "";
    $scope.gremlin.chrome = true;
    $scope.gremlin.firefox = false;
    $scope.gremlin.browser = "chrome";
    $scope.gremlin.modo = "headless";
    $scope.gremlin.largo = 800;
    $scope.gremlin.ancho = 600;
    $scope.gremlin.headless = true;
    $scope.gremlin.noheadless = false;
    $scope.gremlin.seed = 1234;
    $scope.gremlin.tiempo = 1;
    $scope.running = 0;
    $scope.gremlins = [];
    $scope.data = [];
    $scope.id= "";
    $scope.log= "";

    $scope.progreso = function () {
        $scope.running = 1;
    };

    $scope.liberar = function(){
        var fhead = 1;
        if ($scope.gremlin.modo=="no-headless")
            fhead = 0;
        var time = $scope.gremlin.tiempo * 60000;

        var grems = new FormData();
        grems.append("browser", $scope.gremlin.browser);
        grems.append("largo", $scope.gremlin.largo);
        grems.append("ancho", $scope.gremlin.ancho );
        grems.append("fhead", fhead);
        grems.append("url", $scope.gremlin.url);
        grems.append("seed", $scope.gremlin.seed );
        grems.append("tiempo", time);


        $http.post("/gremlins/", grems, {
            withCredentials: true,
            headers: {"Content-Type": undefined},
            transformRequest: angular.identity
        }).success(function (data) {
            $scope.running = 3;

            nav = JSON.parse(data["contenido"]);
            $scope.id = data["id"];
            $scope.log = data["log"];
            if ($scope.gremlin.browser == "chrome"){
                nav["navegador"] = "Chrome";
                nav["icono"] = "chrome";
                nav["visible"] = false;
            }else{
                nav["navegador"] = "Firefox";
                nav["visible"] = false;
                nav["icono"] = "firefox";
            }
            $scope.data.push(nav)

            //$scope.clientes = [];
            //$("#modal-confir").modal("show");
        }).error(function (e) {
            alert(e);
            $scope.running = 0;
            //$scope.errorMessage = e;
            //$("#modal-error").modal("show");
        });
    };

    $scope.visible = function(hide){
        for(ct = 0; ct < $scope.data.length; ct++){
            if($scope.data[ct].navegador === hide){
                $scope.data[ct].visible = !$scope.data[ct].visible;
            }
        }
    }

});

app.directive('ngFileModel', ['$parse', function ($parse) {
    return {
        restrict: 'A',
        link: function (scope, element, attrs) {
            var model = $parse(attrs.ngFileModel);
            var isMultiple = attrs.multiple;
            var modelSetter = model.assign;
            element.bind('change', function () {
                var values = [];
                angular.forEach(element[0].files, function (item) {
                    var value = {
                        // File Name
                        name: item.name,
                        //File Size
                        size: item.size,
                        //File URL to view
                        url: URL.createObjectURL(item),
                        // File Input Value
                        _file: item
                    };
                    values.push(value);
                });
                scope.$apply(function () {
                    if (isMultiple) {
                        modelSetter(scope, values);
                    } else {
                        modelSetter(scope, values[0]);
                    }
                });
            });
        }
    };
}]);