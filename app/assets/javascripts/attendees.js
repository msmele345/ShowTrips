$(function(){


  $("#attendee-form").on("submit", function(e){


    var $form = $(this)
    var url = $form.attr("url")
    var method = "POST"
    var data = $form.serialize();

    $.ajax({
      data: data,
      url: url,
      method: method,
      dataType: 'JSON'
    }).done(function(response){
      $(".attendee-list").append(response.show);

      console.log(response.show)

    })

  })

});