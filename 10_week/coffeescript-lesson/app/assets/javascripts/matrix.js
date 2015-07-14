$(document).ready(function() {
  $.get('http://glenndama.herokuapp.com/api/quotes')
  .success(function(data) {
    console.log("called from JavaScript");
    console.log(data);
    $('section#api').text(data.text);
  })
  .error(function(data) {
    console.log('error!');
  });
});