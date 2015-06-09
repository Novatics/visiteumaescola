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