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
$(document).ready(function(){

	$("nav a").on("click", function(event){
		event.preventDefault();
		$("nav").addClass("fixed");
		id = ($(this).attr("href"));
		scrollVertical = $(id).offset().top;

		$("body, html").animate({scrollTop: scrollVertical});
	});

	$(document).on("scroll", function(){
		secondPage = $("nav li:nth-child(2) a").attr("href");

		if ( $("body").scrollTop() >= $("nav").height() )
		{
			$("nav").addClass("fixed");
		} else {
			$("nav").removeClass("fixed");
		}
	});

});
// Create a lightbox

var $lightbox = $("<div class='lightbox'></div>");
var $img = $("<img>");
var $caption = $("<p class='caption'></p>");


// Add image and caption to lightbox
//
// $lightbox
// 	.append($img)
// 	.append($caption);
//
// // Add lighbox to document
//
// $('body').append($lightbox);
//
//
// $('.gallery li').click(function (e) {
// 	e.preventDefault();
//
// 	// Get image link and description
// 	var src = $(this).children('img').attr("src");
// 	var cap = $(this).children('img').attr("alt");
//
// 	// Add data to lighbox
//
// 	$img.attr('src',src);
// 	$caption.text(cap);
//
// 	// $lightbox.append('<img src="' + src + '"></img><p class="caption">' + caption + '</p>');
//
// 	// Show lightbox
//
// 	$lightbox.fadeIn('fast');
//
// 	$lightbox.click(function () {
// 		$lightbox.fadeOut('fast');
// 	});
// });
//
// $('li').on('click', function(e) {
//   var img = $(this).find('img').attr('src');
//   console.log(img);
//   var newcss = $('#main-image').css('background-image', "url('" + img + "')");
// });


setTimeout(function() {
var gallery = [],
	n = 0,
	imgSize = 0,
	// Used to define one variable for both for loops. Both for loops must have same number of iterations.
	// This variable is based on the number of galleries.
	count = document.getElementsByClassName('imgGallery').length;

function photoGallery(i) {
	return function() {

	  // Dynamically adds repeating elements. Doing it this way cleans up the HTML code since these elements repeat anyway.
	  document.getElementsByClassName('imgGalleryExpanded')[i].appendChild(document.createElement("div")).className = 'imgData';
	  document.getElementsByClassName('imgGalleryExpanded')[i].appendChild(document.createElement("div")).className = 'imgTitle';
	  document.getElementsByClassName('imgGalleryExpanded')[i].appendChild(document.createElement("button")).className = 'galleryBack';
	  document.getElementsByClassName('imgGalleryExpanded')[i].appendChild(document.createElement("button")).className = 'galleryNext';

	  // Dynamically sets the html for the ImgTitle to match the name given to the imgGallery
	  document.getElementsByClassName('imgGalleryExpanded')[i].getElementsByClassName('imgTitle')[0].innerHTML = document.getElementsByClassName('imgGallery')[i].getAttribute('name');

	  // Variable defined to tell the function how many <img>'s are present so it loops around correctly.
	  var galleryLength = (document.getElementsByClassName('galleryImgs')[i].getElementsByTagName('img').length - 1);

	  // Listens for clicks on gallery thumbnails. Uses an if statement to check if the gallery improperly
	  // has an open class when no galleries are open. If not, adds open class to open gallery.
	  document.getElementsByClassName('imgGallery')[i].addEventListener('click', function() {
		if (this.classList.contains('open')) {
		  this.classList.remove('open');
		} else {
		  this.classList.add('open');
		  setTimeout(boundingBox(),290);
		}
	  });

	  // The below code is used to assign the gallery count and loacation displayed below the gallery image. It is
	  // displayed using a CSS pseudo element on the back button. 1 is added to each value to display each value with
	  // the starting point as one instead of zero. It is repeat in the back and next functions, as well as the close
	  // function, to change on click. Unfortunatly, CSS transtitions are not supported on pseudo element content values,
	  // so this is the only dynamic peice that doesn't fade in and out properly.
	  document.getElementsByClassName('imgGalleryExpanded')[i].getElementsByClassName('galleryBack')[0].setAttribute('data-count', (n+1) + '/' + (galleryLength+1));

	  // Removes active class when overlay detects a mouseup event. Note: anywhere on overlay is fine.
	  // The X in the corner is done with CSS pseudo elements and is completely asthetic.
	  // Also resets n and opacities per gallery so that each time you open a gallery you start
	  // on the first image. The touchend fucntion is a duplicate function to listen to touch end
	  // on mobile.
	  document.addEventListener('mouseup',function(e){
		  if (e.target.parentNode.className != 'galleryImgs' && e.target.className != 'galleryNext' && e.target.className != 'galleryBack') {
			for (var u = 0; u < document.getElementsByClassName('imgGallery').length; u++) {
				document.getElementsByClassName('imgGallery')[u].classList.remove('open');
			};
			n = 0;

			setTimeout(function() {
				document.getElementsByClassName('imgGalleryExpanded')[i].getElementsByClassName('galleryBack')[0].setAttribute('data-count', (n+1) + '/' + (galleryLength+1));
			},290);

			for (var p = 0; p < document.getElementsByClassName('galleryImgs')[i].getElementsByTagName('img').length; p++) {
				document.getElementsByClassName('galleryImgs')[i].getElementsByTagName('img')[p].style.opacity= 0;
			};

			document.getElementsByClassName('galleryImgs')[i].getElementsByTagName('img')[n].style.opacity = 1;
		  };
		});

		document.addEventListener('touchend',function(e){
		  if (e.target.parentNode.className != 'galleryImgs' && e.target.className != 'galleryNext' && e.target.className != 'galleryBack') {
			for (var u = 0; u < document.getElementsByClassName('imgGallery').length; u++) {
				document.getElementsByClassName('imgGallery')[u].classList.remove('open');
			};
			n = 0;

			setTimeout(function() {
				document.getElementsByClassName('imgGalleryExpanded')[i].getElementsByClassName('galleryBack')[0].setAttribute('data-count', (n+1) + '/' + (galleryLength+1));
			},290);

			for (var p = 0; p < document.getElementsByClassName('galleryImgs')[i].getElementsByTagName('img').length; p++) {
				document.getElementsByClassName('galleryImgs')[i].getElementsByTagName('img')[p].style.opacity= 0;
			};

			document.getElementsByClassName('galleryImgs')[i].getElementsByTagName('img')[n].style.opacity = 1;
		  };
		});

	  // Sets the first image's opacity to 1 on function load. Ensures that the first image is visible fomr start.
	  document.getElementsByClassName('galleryImgs')[i].getElementsByTagName('img')[0].style.opacity = 1;

	  // Check to make sure a name is given to the gallery. If, it applies that name to the inner gallery element.
	  if (typeof(document.getElementsByClassName('galleryImgs')[i]) != 'undefined') {
		document.getElementsByClassName('galleryImgs')[i].setAttribute('name', document.getElementsByClassName('imgGallery')[i].getAttribute('name'));
	  };

	  // This function determines the placement, size, and content of the name box on the opened gallery. The full size of the image is obtained through
	  // .getBoundingClientRect() and then checked to see if the height or width is larger i.e. portrait or landscape.
	  function boundingBox() {
		  // A bounding rectanlge is obtained for each galleries first image
		  imgSize = document.getElementsByClassName('galleryImgs')[i].getElementsByTagName('img')[n].getBoundingClientRect();

		  // Using the bounding rectanle, the image is determined to be portrait or landscape. Then the images height and width
		  // are set to be a percentage of the viewport with limts at either end.
		  // For portrait;
		  if (imgSize.height > imgSize.width) {
			  if (window.innerWidth*.8 > 1000) {
				  document.getElementsByClassName('galleryImgs')[i].getElementsByTagName('img')[n].style.height = '750px';
				  document.getElementsByClassName('galleryImgs')[i].getElementsByTagName('img')[n].style.width = 'auto';
			  } else if (window.innerWidth*.8 < 300) {
				  document.getElementsByClassName('galleryImgs')[i].getElementsByTagName('img')[n].style.height = '225px';
				  document.getElementsByClassName('galleryImgs')[i].getElementsByTagName('img')[n].style.width = 'auto';
			  } else {
				  document.getElementsByClassName('galleryImgs')[i].getElementsByTagName('img')[n].style.height = (window.innerWidth*.8)*.75 + 'px';
				  document.getElementsByClassName('galleryImgs')[i].getElementsByTagName('img')[n].style.width = 'auto';
			  }
			// For landscape;
		  } else {
			  if (window.innerWidth*.8 > 1000) {
				  document.getElementsByClassName('galleryImgs')[i].getElementsByTagName('img')[n].style.width = '1000px';
				  document.getElementsByClassName('galleryImgs')[i].getElementsByTagName('img')[n].style.height = 'auto';
			  } else if (window.innerWidth*.8 < 300) {
				  document.getElementsByClassName('galleryImgs')[i].getElementsByTagName('img')[n].style.width = '300px';
				  document.getElementsByClassName('galleryImgs')[i].getElementsByTagName('img')[n].style.height = 'auto';
			  } else {
				  document.getElementsByClassName('galleryImgs')[i].getElementsByTagName('img')[n].style.width = (window.innerWidth*.8) + 'px';
				  document.getElementsByClassName('galleryImgs')[i].getElementsByTagName('img')[n].style.height = 'auto';
			  }
		  };

		  // Once the image has been resized, it's new bounding rectangle is observed
		  imgSize = document.getElementsByClassName('galleryImgs')[i].getElementsByTagName('img')[n].getBoundingClientRect();

		  // If the img has a 'data' attribute, the .imgData <div>'s height and width properties are set equal to the image's
		  // respective properties that were obtained through the use of the bounding rectangle. The .imgData has it's 'data'
		  // attribute set to be that of the <img>
		  if (document.getElementsByClassName('galleryImgs')[i].getElementsByTagName('img')[n].hasAttribute('data')) {
			  document.getElementsByClassName('imgGalleryExpanded')[i].getElementsByClassName('imgData')[0].style.opacity = 1;
			  document.getElementsByClassName('imgGalleryExpanded')[i].getElementsByClassName('imgData')[0].style.width = imgSize.width  + 2 + 'px';
			  document.getElementsByClassName('imgGalleryExpanded')[i].getElementsByClassName('imgData')[0].style.transform =
			  	'translate(-50%,'+(imgSize.top + imgSize.height - document.getElementsByClassName('imgData')[0].clientHeight + 1)  +'px)'
			  ;

			  document.getElementsByClassName('imgGalleryExpanded')[i].getElementsByClassName('imgData')[0].setAttribute('data',
				document.getElementsByClassName('galleryImgs')[i].getElementsByTagName('img')[n].getAttribute('data')
			  );
		  // If the <img> has no 'data' attribute, the .imgData <div>'s opacity is set to zero and hidden.
		  } else {
			 document.getElementsByClassName('imgGalleryExpanded')[i].getElementsByClassName('imgData')[0].style.opacity = 0;
		  }
	  };

	  setTimeout(boundingBox,0);
	  window.addEventListener('resize',boundingBox);

	  // The function of the next button. The if statement is in place so that once the gallery reaches the
	  // end of the images, as defined by galleryLength, it loops back around and starts over. Each click also refires
	  // the boundingBox function to check if the new <img> has a 'data' attribute.
	  document.getElementsByClassName('imgGalleryExpanded')[i].getElementsByClassName('galleryNext')[0].addEventListener('click', function() {
		if (n < galleryLength) {
		  n++;

		  document.getElementsByClassName('galleryImgs')[i].getElementsByTagName('img')[n - 1].style.opacity = 0;
		  document.getElementsByClassName('galleryImgs')[i].getElementsByTagName('img')[n].style.opacity = 1;
		} else {
		  n = 0;
		  document.getElementsByClassName('galleryImgs')[i].getElementsByTagName('img')[galleryLength].style.opacity = 0;
		  document.getElementsByClassName('galleryImgs')[i].getElementsByTagName('img')[n].style.opacity = 1;
		}
		document.getElementsByClassName('imgGalleryExpanded')[i].getElementsByClassName('galleryBack')[0].setAttribute('data-count', (n+1) + '/' + (galleryLength+1));

		boundingBox();

	  });

	  // The function of the back button. Similar to the next button, the if statement included is in place
	  // for looping. If n goes below zero, the if statment gets n to the galleryLength before changing
	  // the image's opacity.  Each click also refires the boundingBox function to check if the new <img> has a 'data' attribute.
	  document.getElementsByClassName('imgGalleryExpanded')[i].getElementsByClassName('galleryBack')[0].addEventListener('click', function() {
		if (n > 0) {
		  n--;
		  document.getElementsByClassName('galleryImgs')[i].getElementsByTagName('img')[n + 1].style.opacity = 0;
		  document.getElementsByClassName('galleryImgs')[i].getElementsByTagName('img')[n].style.opacity = 1;
		} else {
		  n = galleryLength;
		  document.getElementsByClassName('galleryImgs')[i].getElementsByTagName('img')[0].style.opacity = 0;
		  document.getElementsByClassName('galleryImgs')[i].getElementsByTagName('img')[n].style.opacity = 1;
		}
		document.getElementsByClassName('imgGalleryExpanded')[i].getElementsByClassName('galleryBack')[0].setAttribute('data-count', (n+1) + '/' + (galleryLength+1));

		boundingBox();

	  });

	};
  }

  // Mulitple for loops in place to "break" Javascript's function-only variable scope. More information
  // on this can be found at the page located at the http link at the top of this function.
  for (var i = 0; i < count; i++) {
	gallery[i] = photoGallery(i);
  }

  for (var j = 0; j < count; j++) {
	gallery[j]();
  }

}, 0);
