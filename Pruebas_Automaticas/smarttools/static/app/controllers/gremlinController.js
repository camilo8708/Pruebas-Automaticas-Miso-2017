app.controller("gremlinController", function ($scope, $http, sessionService, ngTableParams, $log, $filter, $routeParams) {
    $scope.gremlin = {};
    $scope.gremlin.url = "";
    $scope.gremlin.chrome = true;
    $scope.gremlin.firefox = false;
    $scope.gremlin.largo = 800;
    $scope.gremlin.ancho = 600;
    $scope.gremlin.headless = true;
    $scope.gremlin.noheadless = false;
    $scope.gremlin.seed = 1234;
    $scope.gremlin.tiempo = 1;

    $scope.gremlins = [];

    $scope.liberar = function(){

        var browser ="";
        var fhead = 1;
        if ($scope.gremlin.noheadless )
            fhead = 0;
        if ($scope.gremlin.chrome)
            browser ="chrome";
        else
            browser ="firefox";

        var time = $scope.gremlin.tiempo * 60000;

        var grems = new FormData();
        grems.append("browser", browser);
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
        }).success(function () {
            alert(e);
            //$scope.clientes = [];
            //$("#modal-confir").modal("show");
        }).error(function (e) {
            alert(e);
            //$scope.errorMessage = e;
            //$("#modal-error").modal("show");
        });
    };
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