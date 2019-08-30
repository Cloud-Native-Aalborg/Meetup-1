$(document).ready(function(){
    $.getJSON({url: "http://wisdom.debian-2gb-nbg1-1.mejlholm.org/wisdom/random", success: function(result) {
        $("#quote").html(result['message']);
  }});
});