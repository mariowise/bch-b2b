// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

angular.module('sortApp', [])

.controller('mainController', function($scope) {
  console.log("mainController running")
  console.log(empresas)
  if(empresas == undefined)
    window.location = window.location

  var camposBusqueda = ["razon_social","giro","descripcion"];
  for(empresa in empresas) { empresa = empresas[empresa]; 
    var temp = "";
    for(var j=0;j<camposBusqueda.length;j++){
      temp+=empresa[camposBusqueda[j]];
    }    
    empresa.busqueda = temp;
  }
  $scope.empresas = empresas;
});

// Esta wea vale Oro
function boostrapAngularJS () {
    angular.bootstrap(document.body, ['sortApp']);
    addCallbackToPageChange();
}
function addCallbackToPageChange() {
    angular.element(document).one('page:change', function () {
        angular.element(this).one('page:load', boostrapAngularJS);
    });
}
addCallbackToPageChange();
