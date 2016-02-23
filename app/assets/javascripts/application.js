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
#= require volunteers_form.js
#= require schools_form.js
#= require form_validation.js

// Scroll to volunteerForm
$('.showVolunteerForm').click(function(){
  $('#slideVolunteer').addClass('active');
  $('#slideSchool').removeClass('active');
  $('html, body').animate({scrollTop: $("#formVolunteer").offset().top}, 2000);
  $(".content-2").css("padding-bottom", "30px");
});

// Scroll to schoolForm
$('.showSchoolForm').click(function(){
  $('#slideSchool').addClass('active');
  $('#slideVolunteer').removeClass('active');
  $('html, body').animate({scrollTop: $("#formSchool").offset().top}, 2000);
  $(".content-2").css("padding-bottom", "30px");
});
