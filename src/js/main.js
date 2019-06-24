$(document).ready(function () {
	sliderImage();
	otherNewClient();
	bannerSlider();
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