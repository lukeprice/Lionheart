// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require jquery.purr
//= require best_in_place

$(document).ready(function () {
  
  /* Activating Best In Place */
  jQuery(".best_in_place").best_in_place();
  
  var slides = ($('div.slide').toArray());
	var currentSlide = 0;
  var i;
  $('div.slide').hide(function() { 
     $('#'+ "slide-0" +'.slide').show();
  });

  
  
  var banners = ($('div.banner').toArray());
	var currentBanner = 0;
  
  $('div.banner').hide(function() { 
    ($(banners[0]).stop().fadeIn(1000));
  });
  
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
  
  $('div.banner').click(function () {
    $(banners[currentBanner]).stop().fadeOut(1000, function(){});
      currentBanner ++;
      if(currentBanner >= banners.length)
      {
        currentBanner = 0;
      }
      $(banners[currentBanner]).delay(0).fadeIn(1000);
    
    return false;
   });
  
  $('div.left-arrow').click(function () {
    $(banners[currentBanner]).stop().fadeOut(1000, function(){});
      currentBanner --;
      if(currentBanner < 0)
      {
        currentBanner = banners.length - 1;
      }
      $(banners[currentBanner]).delay(0).fadeIn(1000);
    
    return false;
   });
  
  $('div.right-arrow').click(function () {
    $(banners[currentBanner]).stop().fadeOut(1000, function(){});
      currentBanner ++;
      if(currentBanner >= banners.length)
      {
        currentBanner = 0;
      }
      $(banners[currentBanner]).delay(0).fadeIn(1000);
    
    return false;
   });
  
  setInterval(function () {
    $(banners[currentBanner]).stop().fadeOut(1000, function(){});
      currentBanner ++;
      if(currentBanner >= banners.length)
      {
        currentBanner = 0;
      }
      $(banners[currentBanner]).delay(0).fadeIn(1000).delay(5000);
  }, 8000);

  
  $('img.tour-nav-image').click(function(event) {
    $(slides[currentSlide]).stop().fadeOut(1000, function(){});
    slideID = event.target.id.split('-');
    currentSlide = parseInt(slideID[1]);
    $(slides[currentSlide]).delay(1300).fadeIn(1000);
    
    return false;
  });
  
    $('div.slide-name').click(function(event) {
    $(slides[currentSlide]).stop().fadeOut(1000, function(){});
    slideID = event.target.id.split('-');
    currentSlide = parseInt(slideID[1]);
    $(slides[currentSlide]).delay(1300).fadeIn(1000);
    
    return false;
  });
  
  
});