app.controller("pruebaController", function ($scope, $http, sessionService, ngTableParams, $log, $filter, $routeParams) {
    $scope.parametrosE2E = {};
    $scope.parametrosE2E.chrome = false;
    $scope.parametrosE2E.firefox = false;
    $scope.parametrosE2E.ie = false;
    $scope.parametrosE2E.safari = false;
    $scope.parametrosE2E.opera = false;

    $scope.files = [];

    $scope.upload = function(){

                var fd = new FormData();
                fd.append("navegadores", JSON.stringify($scope.parametrosE2E));
                fd.append("archivos", $scope.files);

                $http.post("/pruebaE2E/", fd, {
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