if($('.content-2') && $('.content-2').length > 0){

  $("#submitVolunteer").on('click',function() {

    $contact_form = $('#formVolunteer');
    var fields = $contact_form.serialize();
    $.ajax({
      type: "POST",
      url: "/volunteers/new",
      data: fields,
      dataType: 'json',
      success: function(response) {

        if(response.status){
          $('#formVolunteer input').val('');
        }
        $(".sucessfulSignup").css("display", "block");
        // $('.sucessfulSignup').animate({"right": '50%', "margin-right": ($('.sucessfulSignup').width()/2) + 'px' });
        $('.sucessfulSignup').animate({"right": '0%'}, 1000);
      }
    });
    return false;
  });


}
