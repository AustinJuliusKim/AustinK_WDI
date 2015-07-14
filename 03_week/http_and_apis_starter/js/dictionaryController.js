angular
  .module('dictionaryApp')
  .controller("DictionaryController", DictionaryController);

DictionaryController.$inject = ['$http'];

function DictionaryController($http) {
  var self = this;
 
  var targetUrl = "https://montanaflynn-dictionary.p.mashape.com/define?word=";
  self.targetWord = "irony";
  var endpoint = targetUrl + self.targetWord;
  
  self.getJson = $http({
  	method: 'GET',
  	url: endpoint,
  	headers: {
  		"X-Mashape-Key": "CsSD0CcyI3mshiBcAmvjRmOVlmqLp13Ywx8jsnnr1IZNX1MSIz",
  		"Accept": "application/json"
  	}
  })
  .success(renderData)
  .error(errorMessage);

  function renderData (data) {
      self.data = data.definitions;
      console.log("success");
  }
  function errorMessage() {
  	console.log("something went wrong");
  }

  self.getDefinition = function(value) {
    self.targetWord= value.toLowerCase();
    endpoint = targetUrl + self.targetWord;
    $http({
      method: 'GET',
      url: endpoint,
      header: {
        "X-Mashape-Key": "CsSD0CcyI3mshiBcAmvjRmOVlmqLp13Ywx8jsnnr1IZNX1MSIz",
       "Accept": "application/json"
      }
    })
    .success(renderData)
    .error(errorMessage);
  };


}