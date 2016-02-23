//Validate Volunteer Form
$('#formSchool').validate({
   rules: {
     "name": {
         required: true,
         minlength: 4
     },
     "email": {
         required: true,
         email: true
     }
   }
});

// Validate School Form
$('#formVolunteer').validate({
  rules: {
    "name": {
        required: true,
        minlength: 4
    },
    "email": {
        required: true,
        email: true
    }
  }
});
