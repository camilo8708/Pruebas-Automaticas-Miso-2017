app.controller("pruebaController", function ($scope, $http, sessionService, ngTableParams, $log, $filter, $routeParams,$location) {
    $scope.parametrosE2E = {};
    $scope.parametrosE2E.chrome = true;
    $scope.parametrosE2E.firefox = false;
    $scope.parametrosE2E.ie = false;
    $scope.parametrosE2E.safari = false;
    $scope.parametrosE2E.opera = false;

    $scope.files = [];
    $scope.repositorio;
    $scope.ruta;

    $scope.upload = function(){

                var fd = new FormData();
                fd.append("filesLength", $scope.files.length);
                fd.append("repositorio", $scope.repositorio);
                fd.append("ruta", $scope.ruta);
                fd.append("navegadores", JSON.stringify($scope.parametrosE2E));

                $scope.files.forEach( function(file, indice, array) {
                    fd.append("file"+indice, file._file);
                });

                $http.post("/pruebaE2E/", fd, {
                    withCredentials: true,
                    headers: {"Content-Type": undefined},
                    transformRequest: angular.identity
                }).success(function (e) {
                    $("#modal-confir").modal("hide");
                    $location.url("E2Eresultado/"+e);
                }).error(function (e) {
                    $scope.errorMessage = e;
                    $("#modal-error").modal("show");
                });
                $("#modal-confir").modal("show");
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