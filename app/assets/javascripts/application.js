// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function () {
  var trigger = $('.hamburger'),
      overlay = $('.overlay'),
     isClosed = false;

    trigger.click(function () {
      hamburger_cross();
    });

    function hamburger_cross() {

      if (isClosed == true) {
        overlay.hide();
        trigger.removeClass('is-open');
        trigger.addClass('is-closed');
        isClosed = false;
      } else {
        overlay.show();
        trigger.removeClass('is-closed');
        trigger.addClass('is-open');
        isClosed = true;
      }
  }

  $('[data-toggle="offcanvas"]').click(function () {
        $('#wrapper').toggleClass('toggled');
  });
});

// Create a lightbox

var $lightbox = $("<div class='lightbox'></div>");
var $img = $("<img>");
var $caption = $("<p class='caption'></p>");


// Add image and caption to lightbox

$lightbox
	.append($img)
	.append($caption);

// Add lighbox to document

$('body').append($lightbox);


$('.gallery li').click(function (e) {
	e.preventDefault();

	// Get image link and description
	var src = $(this).children('img').attr("src");
	var cap = $(this).children('img').attr("alt");

	// Add data to lighbox

	$img.attr('src',src);
	$caption.text(cap);

	// $lightbox.append('<img src="' + src + '"></img><p class="caption">' + caption + '</p>');

	// Show lightbox

	$lightbox.fadeIn('fast');

	$lightbox.click(function () {
		$lightbox.fadeOut('fast');
	});
});
