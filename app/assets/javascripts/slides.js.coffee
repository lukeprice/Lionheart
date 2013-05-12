# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready(function () {
  var slides = ($('div.slide').toArray());
	var currentSlide = 0;
  ($(slides[0]).stop().fadeIn(1000));
  
  $('div.slide').click(function () {
    $(slides[currentSlide]).stop().fadeOut(1000, function(){});
      currentSlide ++;
      if(currentSlide >= slides.length)
      {
        currentSlide = 0;
      }
      $(slides[currentSlide]).delay(1300).fadeIn(1000);
    
  return false;
});
  
});