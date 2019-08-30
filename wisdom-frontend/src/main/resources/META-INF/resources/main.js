$(document).ready(function(){
    $.getJSON({url: "http://localhost:8081/wisdom/random", success: function(result) {
        $("#quote").html(result['message']);
  }});
});