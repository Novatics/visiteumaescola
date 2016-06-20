(function(global){

  'use strict';

  // namespace
  var visite = {};

  // constants
  var CHECKBOX_CLASSNAME = 'checkbox';
  var CHECKED_CLASSNAME = 'checked';
  var LOCATION_REGISTER = 'l_register';

  var goTo = function(location) {
    var location = document.getElementById(location);
    var headerHeight = document.getElementById('header').offsetHeight;
    global.scrollTo(0, location.offsetTop - headerHeight);
  };

  // ready
  global.addEventListener('load', function(){
    stylizeForm();
    stylizeRange();

    initTab({
      formPriority : document.getElementById('voluntary_from')
    });
  });

  function stylizeRange() {
    var ranges = document.querySelectorAll('input.input_range');
    for (var i = 0; i < ranges.length; i++) {
      ranges[i].addEventListener('input', onChangeRange);
      setPreviewValue(ranges[i], ranges[i].value);
    }

    function onChangeRange() {
      setPreviewValue(this, this.value);
    }

    function setPreviewValue(range, value) {
      range.parentNode.querySelector('.range_result span').innerHTML = value;
    }
  }

  // stylize form
  function stylizeForm() {
    var checks = document.querySelectorAll('.checkboxes input[type=checkbox]');
    var inputs = document.querySelectorAll('.checkgroup .text input');

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
    for (var i = 0; i < inputs.length; i++) {
      var check = inputs[i].parentNode.parentNode.querySelector('.check input');
      
      if(!check.checked)
        inputs[i].classList.add('hide');
    }

    function onChangeCheckbox() {
      var checkbox = this.nextSibling;
      var inputText = this.parentNode.parentNode.querySelector('.text input');
      
      // toggle
      if(checkbox.checked) {
        this.classList.remove('checked');
        checkbox.checked = false;

        if(inputText)
          inputText.classList.add('hide');
      }
      else {
        this.classList.add('checked');
        checkbox.checked = true;

        if(inputText){
          inputText.classList.remove('hide');
          inputText.value = '';
        }
      }
    }
  }

  function initTab(config) {
    var stepsForms = document.querySelectorAll('form.steps_container');
    var activeForm = config.formPriority;
    var nextButton = activeForm.querySelector('button[type=button]');
    var submitButton = activeForm.querySelector('button[type=submit]');
    var registerHeader = document.getElementById('register_header');
    var registerReference = document.getElementById('register_pos');
    var messageElement = document.getElementById('register_message');
    var titleElement = document.getElementById('register_title');
    var voluntaryTitle = 'Posso ajudar como voluntário:';
    var schoolTitle = 'Minha escola precisa de ajuda:';

    function hideAllFroms() {
      for (var i = 0; i < stepsForms.length; i++) {
        hide(stepsForms[i]);
      }
    }

    function hideStepsForm(fromElement) {
      for (var i = 0; i < fromElement.length; i++) {
        hide(fromElement[i]);
      }
    }

    function activeMenuByIndex(index) {
      var menus = activeForm.querySelectorAll('.steps_menu span');
      for (var i = 0; i < menus.length; i++) {
        menus[i].classList.remove('active');
      }
      menus[index].classList.add('active');
      return menus[index].getAttribute('data-tab');
    }

    function loadContainerByName(name) {
      var steps = activeForm.querySelectorAll('.step');
      for (var i = 0; i < steps.length; i++) {
        if(steps[i].classList.contains(name)) {
          show(steps[i]);
        }
        else {
          hide(steps[i]);
        }
      }
    }

    function getTabInfo() {
      var menu = activeForm.querySelectorAll('.steps_menu span');
      var tab =  { 
        tabs: menu,
        current: -1,
        isLastStep: false
      };

      for (var i = 0; i < menu.length; i++) {
        if(menu[i].classList.contains('active')) {
          tab.current = i;
          tab.isLastStep = (i == (menu.length - 1));
          tab.isLastButOneStep = (i == (menu.length - 2));
          break;
        }
      }
      return tab;
    }

    function showSucessMessage() {
      var message = activeForm.getAttribute('data-success');
      messageElement.querySelector('p').innerHTML = message;
      show(messageElement);
    }

    function useTab(index) {
      var attrName = activeMenuByIndex(index);
      loadContainerByName(attrName);
    }

    function show(el) {
      el.classList.remove('hide');
    }

    function hide(el) {
      el.classList.add('hide');
    }

    function onNextStep(e) {
      var tabInfo = getTabInfo();
      var nextStep = tabInfo.current + 1;

      goTo(LOCATION_REGISTER);
      if(tabInfo.isLastButOneStep) {
        hide(nextButton);
        show(submitButton);
      }
      useTab(nextStep);
    }

    function onSubmitForm(e) {
      var data = activeForm.elements;
      e.preventDefault();

      for (var i = 0; i < data.length; i++) {
        console.log(data[i].name, data[i].value);
      }

      // var xhttp = new XMLHttpRequest();
      // xhttp.onreadystatechange = function() {
      //   if (xhttp.readyState == 4 && xhttp.status == 200) {
      //     document.getElementById("demo").innerHTML = xhttp.responseText;
      //   }
      // };

      // xhttp.open("POST", "ajax_info.txt", true);
      // xhttp.send();
      hide(activeForm);
      hide(registerHeader);
      showSucessMessage();
    }

    function configure() {
      var action = document.querySelectorAll('[data-form-action]');
      for (var i = 0; i < action.length; i++) {
        action[i].onclick = function(e){
          var formName = this.getAttribute('data-form-action');
          e.preventDefault();
          goTo(LOCATION_REGISTER);
          initTab({
            formPriority: document.getElementById(formName)
          });
        };
      }
    }

    // prepare...
    (function() {
      configure();
      titleElement.innerHTML = 

      // hide
      hideAllFroms();
      hide(submitButton);
      hide(messageElement);

      // show
      show(activeForm);
      show(nextButton);

      // execute tab
      useTab(0);

      // events
      activeForm.onsubmit = onSubmitForm;
      nextButton.onclick = onNextStep;
      submitButton.onclick = onSubmitForm;


      switch(activeForm.getAttribute('name')) {
        case 'voluntary': titleElement.innerHTML = voluntaryTitle; break;
        case 'school': titleElement.innerHTML = schoolTitle; break;
      }


    }());
  }

}(window));