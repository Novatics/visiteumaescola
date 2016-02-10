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

// Scroll to volunteerForm
$('.showVolunteerForm').click(function(){
  if($('#formSchool').is(":visible")){
    $('#formSchool').animate({width: 'toggle'});
    $('#formVolunteer').animate({width: 'toggle'}, function(){
      $("html, body").animate({ scrollTop : $('#formVolunteer').position().top}, 'slow');
    });
  }
  else{
    $("html, body").animate({ scrollTop : $('#formVolunteer').position().top}, 'slow');
  }
});

// Scroll to schoolForm
$('.showSchoolForm').click(function(){
  if($('#formVolunteer').is(":visible")){
    $('#formVolunteer').animate({width: 'toggle'});
    $('#formSchool').animate({width: 'toggle'}, function(){
      $("html, body").animate({ scrollTop : $('#formSchool').position().top}, 'slow');
    });
  }
  else{
    $("html, body").animate({ scrollTop : $('#formSchool').position().top}, 'slow');
  }
});

// Slide effect to School form
$("#toSchool").click(function(e){
  // Prevent screen from moving
  e.preventDefault();
  $('#formSchool').animate({width: 'toggle'}, 'slow');
  $('#formVolunteer').animate({width: 'toggle'}, 'slow');
});

//Slide effect to User form
$("#toVolunteer").click(function(e){
  // Prevent screen from moving
  e.preventDefault();
  $('#formSchool').animate({width: 'toggle'}, 'slow');
  $('#formVolunteer').animate({width: 'toggle'}, 'slow');
});

//Submit volunteer form
$("#submitVolunteer").click( function() {
  $('#volunteer_user').submit();
});

//Submit school form
$("#submitSchool").click( function() {
  $('#school_user').submit();
});

//Validate Volunteer Form
$('#volunteer_user').validate({ // initialize the plugin
   rules: {
     "user[name]": {
         required: true
     },
     "user[email]": {
         required: true,
         email: true
     },
     "user[password]": {
         required: true,
         minlength: 6
     },
     "user[password_confirmation]":{
       equalTo: "#user_password"
     }
   }
});

//Validate School Form
// $('#school_user').validate({ // initialize the plugin
//   rules: {
//     "user[name]": {
//         required: true
//     },
//     "user[email]": {
//         required: true,
//         email: true
//     },
//     "user[password]": {
//         required: true,
//         minlength: 6
//     },
//     "user[password_confirmation]":{
//       equalTo: "#user_password"
//     }
//   }
// });
