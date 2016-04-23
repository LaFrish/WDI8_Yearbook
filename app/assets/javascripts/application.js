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


'use strict';

var transEndEventNames = {
			'WebkitTransition': 'webkitTransitionEnd',
			'MozTransition': 'transitionend',
			'OTransition': 'oTransitionEnd',
			'msTransition': 'MSTransitionEnd',
			'transition': 'transitionend'
		},
		transEndEventName = transEndEventNames[ Modernizr.prefixed( 'transition' ) ],
		support = { transitions : Modernizr.csstransitions },
    overlay = document.querySelector("#overlay");


var app = angular.module('app', [])
.controller('GalleryController', ['$scope', function($scope){

  // array of images
  $scope.images = [
    {url:"https://c1.staticflickr.com/9/8141/7356885112_80610dfa01_c.jpg",title:"Landscape",author:'Moyan Brenn',link:"https://www.flickr.com/photos/aigle_dore/7356885112/in/set-72157630056313707",comments:[
      {username:"anon123", message:"This is a really cool image."}
    ]},
    {url:"https://c1.staticflickr.com/5/4052/4543929183_58d0651c14.jpg",title:"Kurdistan Nature, Landscape",author:'jan Sefti',link:'https://www.flickr.com/photos/kurdistan4all/4543929183',comments:[]},
    {url:"https://c2.staticflickr.com/4/3642/3489892189_19d41228f0_z.jpg?zz=1",title:"Landscape",author:'Kenny Teo',link:'https://www.flickr.com/photos/cheishichiyo/3489892189/',comments:[]},
    {url:"https://c1.staticflickr.com/1/159/351894183_f716cf8172_b.jpg",title:"landscape",author:'mike138',link:'https://www.flickr.com/photos/72486075@N00/351894183',comments:[
      {username:"theDude", message:"Awesome, man!"},
      {username:"otherGuy", message:"Ya, this is my fav"},
      {username:"kermitt", message:"Not my cup of tea..."},
      {username:"kermittSUX", message:"kermitt,you're an idiot!"}
    ]},
    {url:"https://c2.staticflickr.com/6/5567/15041625752_2d393562ce_c.jpg",title:"Landscape",author:'Vasile Hurghis',link:'https://www.flickr.com/photos/94186910@N03/15041625752',comments:[]},
    {url:"https://c2.staticflickr.com/8/7611/16783852181_928f020b32_c.jpg",title:"Landscape in Soft Light",author:'Christian Weidinger',link:'https://www.flickr.com/photos/ch-weidinger/16783852181/',comments:[]},
    {url:"https://c1.staticflickr.com/3/2720/4297479145_4bf8deef54.jpg",title:"Southwest Desert Landscape",author:'Bo Insogna',link:'https://www.flickr.com/photos/thelightningman/4297479145',comments:[]},
    {url:"https://c1.staticflickr.com/1/11/16859633_62d97df1e1_z.jpg?zz=1",title:"Paysage / Landscape",author:'Frédéric Vissault',link:'https://www.flickr.com/photos/nomad-photography/16859633',comments:[
      {username:"142567", message:"Me likey!"},
      {username:"shermanator3000", message:"me too"}
    ]},
    {url:"https://c4.staticflickr.com/8/7351/16186049017_f605c97b0f_z.jpg",title:"Landscape Tutorial",author:'Lies Thru a Lens',link:'https://www.flickr.com/photos/danrocha/16186049017/',comments:[]}
  ];

  // open overlay fullscreen view
  $scope.launchDetail = function(image){
    $scope.detail = image;
    overlay.classList.add("open");
  };
  // close overlay
  $scope.closeDetail = function(){
    overlay.classList.remove("open");
  };


}]);
