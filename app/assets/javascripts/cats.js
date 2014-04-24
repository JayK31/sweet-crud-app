function catMoves(){
  $("h1").on('click', function(){
    alert("Why don’t cats play poker in the jungle? ");
    alert("Too many cheetahs.");
  });
}

$(document).ready(function(){

  var baseUri = "http://localhost:3000";

  $.ajax({
    url: baseUri
  }).done(catMoves);

});
