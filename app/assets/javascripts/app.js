(function(global){

  'use strict';

  // namespace
  var visite = {};

  // constants
  var CHECKBOX_CLASSNAME = 'checkbox';
  var CHECKED_CLASSNAME = 'checked';

  // ready
  global.addEventListener('load', function(){
    stylizeForm();
    // ...
  });

  // stylize form
  function stylizeForm() {
    var checks = document.querySelectorAll('.checkboxes input[type=checkbox]');
    //var inputs = document.querySelectorAll('.checkgroup .text input');

    // prepare checkboxes
    for (var i = 0; i < checks.length; i++) {
      var element = checks[i];
      var checkContainer = element.parentNode;
      var fakeCheck = document.createElement('div');

      fakeCheck.classList.add(CHECKBOX_CLASSNAME);
      
      if(element.checked) 
        fakeCheck.classList.add(CHECKED_CLASSNAME);

      checkContainer.insertBefore(fakeCheck, element);
      element.classList.add('hide');
      fakeCheck.addEventListener('click', onChangeCheckbox);

    }

    // prepare inputs
    // for (var i = 0; i < inputs.length; i++) {
    //   var check = inputs[i].parentNode.parentNode.querySelector('.check input');
      
    //   if(!check.checked)
    //     inputs[i].classList.add('hide');
    // }

    function onChangeCheckbox() {
      var checkbox = this.nextSibling;
      //var inputText = this.parentNode.parentNode.querySelector('.text input');
      
      // toggle
      if(checkbox.checked) {
        this.classList.remove('checked');
        checkbox.checked = false;
        //inputText.classList.add('hide');
      }
      else {
        this.classList.add('checked');
        checkbox.checked = true;
        //inputText.classList.remove('hide');
      }
    }

  }

}(window));