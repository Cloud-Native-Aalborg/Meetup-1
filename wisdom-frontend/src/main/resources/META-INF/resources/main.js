$(document).ready(function(){
    $.getJSON({url: "http://wisdom-service/wisdom/random", success: function(result) {
        $("#quote").html(result['message']);
  }});
});