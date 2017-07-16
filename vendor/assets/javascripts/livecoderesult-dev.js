$(function(){
  autosize( $('#dev_code') );

  $('#dev_code').keypress(function(e) {
    if (e.which == 13) {
      $.post(
        "/livecoderesult/livecoderesult",
        {code: $('#dev_code').val()},
        function(data){
          $('#dev_code_result').html( data );
        }
      )
    }
  }).on('keydown', function ( e ) {
    var code = $('#dev_code').val();
    if ( (e.shiftKey || e.ctrlKey) && e.which == 40) { // shift + runter-Taste
    } else if ( (e.shiftKey || e.ctrlKey) && e.which == 38) { // shift + rauf-Taste
    }
  });

  $("#btn_14days").click(function(){
    log( "trigger");
    $("#dev_code").val("current_user.datetime -= 14.days; current_user.save; current_user.datetime");

    $.post(
      "/dev_code",
      {code: $('#dev_code').val()},
      function(data){
        $('#dev_code_result').html( data );
      }
    )
  });

});

// $("#asset_info_box").data("close-ask")
// $("#asset_info_box").data("close-bid")
// $('#trade_entry_price').val(price)
