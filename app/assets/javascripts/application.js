#= require jquery-1.10.2.min.js
#= require jquery.validate.js
#= require jquery.maskedinput.js
#= require html5shiv.js
#= require grid.js
#= require underscore.js
#= require backbone.js
#= require bootstrap/bootstrap.js
#= require modernizr.custom.js
#= require page-transitions.js



$(function(){
  var pt = PageTransitions();
  pt.init('#pt-main');
  $('#pt-main .control-prev').on('click', function() {
      pt.gotoPage(5, 'prev');
      return false;
  });
  $('#pt-main .control-next').on('click', function() {
      pt.gotoPage(6, 'next');
      return false;
  });
  console.log("loading...");
})

$("#submitUser").click( function() {
    //$('#volunteer_profile').submit();
    $('#new_user').submit();
});

$("#submitSchool").click( function() {
    //$('#school_profile').submit();
    $('#school_user').submit();
});

$('#modalSchool').on('shown.bs.modal', function (e) {
  // do cool stuff here all day… no need to change bootstrap
  $('#school_user').validate({ // initialize the plugin
       rules: {
           "user[email]": {
               required: true,
               email: true
           },
           "user[password]": {
               required: true,
               minlength: 6
           },
           "user[password_confirmation]":{
             required:true,
             minlength:6
           }
       }
   });
});
