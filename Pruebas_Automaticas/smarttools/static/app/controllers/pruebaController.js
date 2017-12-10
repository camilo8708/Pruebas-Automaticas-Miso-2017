app.controller("pruebaController", function ($scope, $http, sessionService, ngTableParams, $log, $filter, $routeParams) {
    $scope.parametrosE2E = {};
    $scope.parametrosE2E.chrome = false;
    $scope.parametrosE2E.firefox = false;
    $scope.parametrosE2E.ie = false;
    $scope.parametrosE2E.safari = false;
    $scope.parametrosE2E.opera = false;
    //Variable para consultar si el usuario está autenticado o está autorizado con los roles que se pasan como
    //parámetro
/*    $scope.session = {};
    $scope.clientes = [];
    $scope.session.authenticated = sessionService.isAuthenticated();
    $scope.session.authorized = sessionService.isAuthorized();
*/
    $scope.carguePruebas = function () {
        $scope.parametrosE2E.chrome = true;
    }
/*
    $scope.validarDatos = function (pos) {
        //Validar Campos Obligatorios
        if($scope.clientes[i].nombre1 === undefined || $scope.clientes[i].apellido1 === undefined ||
            $scope.clientes[i].correo === undefined){

            $scope.clientes[i].error = true;
            $scope.clientes[i].msg = $scope.clientes[i].msg + "El primer nombre, segundo nombre y el correo son obligatorios.\n";
        }

        //Validar correo correcto
        if($scope.validarEmail($scope.clientes[pos].correo)){
            $scope.clientes[i].error = true;
            $scope.clientes[i].msg = $scope.clientes[i].msg + "Correo Invalido.\n";
        }
    }

    $scope.validarEmail = function (email)  {
        expr = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
        if ( !expr.test(email) )
            return true;
        return false;
    }

    $scope.enviarEncuestas = function () {
        for (i = 0; i < $scope.clientes.length; i++) {
            if(!$scope.clientes[i].error){
                var fd = new FormData();
                fd.append("nombre1", $scope.clientes[i].nombre1);
                fd.append("nombre2", $scope.clientes[i].nombre2);
                fd.append("apellido1", $scope.clientes[i].apellido1);
                fd.append("apellido2", $scope.clientes[i].apellido2);
                fd.append("tipoIdenti", $scope.clientes[i].tipoIdenti);
                fd.append("identi", $scope.clientes[i].identi);
                fd.append("correo", $scope.clientes[i].correo);
                fd.append("telefono1", $scope.clientes[i].telefono1);
                fd.append("telefono2", $scope.clientes[i].telefono2);
                fd.append("celular", $scope.clientes[i].celular);
                fd.append("idEmpleado", sessionService.getUserId());

                $http.post("/cliente/", fd, {
                    withCredentials: true,
                    headers: {"Content-Type": undefined},
                    transformRequest: angular.identity
                }).success(function () {
                    $scope.clientes = [];
                    $("#modal-confir").modal("show");
                }).error(function (e) {
                    $scope.errorMessage = e;
                    $("#modal-error").modal("show");
                });
            }
        }
    }
});

app.directive('fileReader', function() {
  return {
    scope: {
      fileReader:"="
    },
    link: function(scope, element) {
      $(element).on('change', function(changeEvent) {
        var files = changeEvent.target.files;
        if (files.length) {
          var r = new FileReader();
          r.onload = function(e) {
              var contents = e.target.result;
              scope.$apply(function () {
                scope.fileReader = contents;
                scope.testing = contents;
              });
          };

          r.readAsText(files[0]);
        }
      });
    }
  };*/
});

