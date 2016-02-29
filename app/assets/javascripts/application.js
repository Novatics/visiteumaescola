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
  $("#school").css("display", "none");
  $("#volunteer").css("display", "block");
  $('html, body').animate({scrollTop: $("#formVolunteer").offset().top}, 1000);
});

// Scroll to schoolForm
$('.showSchoolForm').click(function(){
  $("#volunteer").css("display", "none");
  $("#school").css("display", "block");
  $('html, body').animate({scrollTop: $("#formSchool").offset().top}, 1000);
});

// Close Form
$('.closeForm').click(function(){
  $("#volunteer").hide("slow");
  $("#school").hide("slow");
});
