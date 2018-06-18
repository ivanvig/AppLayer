angular.module('inventario', [])
.controller('server_inv', function($scope, $http){
    $http.get('http://[2001:a:a:a::2]:1337/inventariodeservidores/')
        .then(function(response){
            $scope.servidores = response.data;
        });

    $scope.server_info = [];
    $scope.cargar = function(id){
        $http.get('http://[2001:a:a:a::2]:1337/inventariodeservidores/'+id)
            .then(function(response){
                $scope.server_info.push(response.data)
                
            })
    }
}) ;
