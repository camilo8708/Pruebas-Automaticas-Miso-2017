app.controller("resultadoE2EController", function ($scope, $http, sessionService, ngTableParams, $log, $filter, $routeParams) {
    $scope.id = $routeParams.id;
    $scope.resultado = false;
    $scope.data = [];
    $scope.numNavegadores = 0;


    if ($routeParams.id != undefined) {
        $http({method: "GET", url: "/resultadoE2E/" +  $scope.id})
            .success(function (data, status) {
                if(data["chrome"] != undefined){
                    nav = {};
                    start="";
                    end="";
                    passed=0;
                    failed=0;
                    skiped=0;
                    nav["navegador"] = "Chrome";
                    nav["icono"] = "chrome";
                    nav["visible"] = false;
                    archi = [];
                    for(var arch in data["chrome"]){
                        info = JSON.parse(data["chrome"][arch]);
                        archi.push(info);
                        start = info["start"];
                        end = info["end"];
                        passed += info.state.passed;
                        failed += info.state.failed;
                        skiped += info.state.skiped;
                    }
                    nav["passed"]=passed;
                    nav["failed"]=failed;
                    nav["skiped"]=skiped;
                    nav["start"]=start;
                    nav["end"]=end;
                    nav["arch"] = archi;
                    $scope.data.push(nav);
                }

                if(data["firefox"] != undefined){
                    nav = {};
                    start="";
                    end="";
                    passed=0;
                    failed=0;
                    skiped=0;
                    nav["navegador"] = "Firefox";
                    nav["icono"] = "firefox";
                    nav["visible"] = false;
                    archi = [];
                    for(var arch in data["firefox"]){
                        info = JSON.parse(data["firefox"][arch]);
                        archi.push(info);
                        start = info["start"];
                        end = info["end"];
                        passed += info.state.passed;
                        failed += info.state.failed;
                        skiped += info.state.skiped;
                    }
                    nav["passed"]=passed;
                    nav["failed"]=failed;
                    nav["skiped"]=skiped;
                    nav["start"]=start;
                    nav["end"]=end;
                    nav["arch"] = archi;
                    $scope.data.push(nav);
                }

                if(data["safari"] != undefined){
                    nav = {};
                    start="";
                    end="";
                    passed=0;
                    failed=0;
                    skiped=0;
                    nav["navegador"] = "Safari";
                    nav["icono"] = "safari";
                    nav["visible"] = false;
                    archi = [];
                    for(var arch in data["safari"]){
                        info = JSON.parse(data["safari"][arch]);
                        archi.push(info);
                        start = info["start"];
                        end = info["end"];
                        passed += info.state.passed;
                        failed += info.state.failed;
                        skiped += info.state.skiped;
                    }
                    nav["passed"]=passed;
                    nav["failed"]=failed;
                    nav["skiped"]=skiped;
                    nav["start"]=start;
                    nav["end"]=end;
                    nav["arch"] = archi;
                    $scope.data.push(nav);
                }

                if(data["opera"] != undefined){
                    nav = {};
                    start="";
                    end="";
                    passed=0;
                    failed=0;
                    skiped=0;
                    nav["navegador"] = "Opera";
                    nav["icono"] = "opera";
                    nav["visible"] = false;
                    archi = [];
                    for(var arch in data["opera"]){
                        info = JSON.parse(data["opera"][arch]);
                        archi.push(info);
                        start = info["start"];
                        end = info["end"];
                        passed += info.state.passed;
                        failed += info.state.failed;
                        skiped += info.state.skiped;
                    }
                    nav["passed"]=passed;
                    nav["failed"]=failed;
                    nav["skiped"]=skiped;
                    nav["start"]=start;
                    nav["end"]=end;
                    nav["arch"] = archi;
                    $scope.data.push(nav);
                }

                if(data["ie"] != undefined){
                    nav = {};
                    start="";
                    end="";
                    passed=0;
                    failed=0;
                    skiped=0;
                    nav["navegador"] = "Internet Explorer";
                    nav["icono"] = "internet-explorer";
                    nav["visible"] = false;
                    archi = [];
                    for(var arch in data["ie"]){
                        info = JSON.parse(data["ie"][arch]);
                        archi.push(info);
                        start = info["start"];
                        end = info["end"];
                        passed += info.state.passed;
                        failed += info.state.failed;
                        skiped += info.state.skiped;
                    }
                    nav["passed"]=passed;
                    nav["failed"]=failed;
                    nav["skiped"]=skiped;
                    nav["start"]=start;
                    nav["end"]=end;
                    nav["arch"] = archi;
                    $scope.data.push(nav);
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