$(document).ready(function () {
	sliderImage();
	otherNewClient();
	bannerSlider();
	roomTypeSlide();
	homeBannerSlider();
});
function sliderImage() {
	var swiper = new Swiper('.slider-image .swiper-container', {
		speed: 2000,
		navigation: {
		  nextEl: '.slider-image .nav-next',
		  prevEl: '.slider-image .nav-prev',
		},
	  });
  
}
function bannerSlider() {
	var swiper = new Swiper('.banner .swiper-container', {
		speed: 2000,
	  });
  
}
function homeBannerSlider() {
	var swiper = new Swiper('.home-banner .swiper-container', {
		speed: 2000,
		pagination: {
			el: '.home-banner .swiper-pagination',
		  },
	  });
  
}
function otherNewClient() {
	var swiper = new Swiper('.giaitri .swiper-container', {
		spaceBetween: 20,
		slidesPerView: 3,
		speed: 2000,
		breakpoints: {
			1024: {
				slidesPerView: 2,
			},
			576: {
				slidesPerView: 1,
			}
		}
	})
}
function roomTypeSlide() {
	var swiper = new Swiper('.room-type .swiper-container', {
		slidesPerView: 3,
		speed: 2000,
		spaceBetween: 20,
		breakpoints: {
			1024: {
				slidesPerView: 2,
			},
			576: {
				slidesPerView: 1,
			}
		}
	})
}