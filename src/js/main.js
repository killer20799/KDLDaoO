$(document).ready(function () {
		
	function toggleMenu() {
		let toggleMenu = $('.header .toggle-menu')
		let backdrop = $('.header .backdrop')
		let bodyOverFlow = $('body')
		let mobileHeader = $('.mobile-header')
		toggleMenu.on('click', function () {
			toggleMenu.toggleClass('active')
			backdrop.toggleClass('active')
			bodyOverFlow.toggleClass('active')
			mobileHeader.toggleClass('active')
		})
	}
	function toggleSearchBox() {
		let searchIcon = $('.header .searchicon')
		let searchBox = $('.header .Module-142')
		searchIcon.on('click', function () {
			searchBox.toggleClass('active')
		})

	}
	const Header = {
		moveSearchBox: function () {
			let moveSearchBox = new MappingListener({
				selector: '.header .searchbox',
				mobileWrapper: '.mobile-tab',
				mobileMethod: 'appendTo',
				desktopWrapper: '.header-info .desktop-header-1',
				desktopMethod: 'prependTo',
				breakpoint: 992,
			}).watch()
		},
		moveNav: function () {
			let moveNav = new MappingListener({
				selector: '.header .desktop-header-2',
				mobileWrapper: '.mobile-tab',
				mobileMethod: 'appendTo',
				desktopWrapper: '.header-nav .container',
				desktopMethod: 'prependTo',
				breakpoint: 992,
			}).watch()
		},
		moveContactInfo: function () {
			let moveContactInfo = new MappingListener({
				selector: '.header .desktop-header-1',
				mobileWrapper: '.container .mobile-header .mobile-tab',
				mobileMethod: 'appendTo',
				desktopWrapper: '.header-info .container',
				desktopMethod: 'prependTo',
				breakpoint: 992,
			}).watch()
		},
		moveLogo: function () {
			let moveLogo = new MappingListener({
				selector: '.header .logo',
				mobileWrapper: '.mobile-header',
				mobileMethod: 'appendTo',
				desktopWrapper: '.desktop-header-2',
				desktopMethod: 'prependTo',
				breakpoint: 992,
			}).watch()
		}
	}
	toggleMenu();
	sliderImage();
	otherNewClient();
	bannerSlider();
	roomTypeSlide();
	homeBannerSlider();
	toggleSearchBox();
	
	Header.moveSearchBox();
	Header.moveNav();
	Header.moveContactInfo();
	Header.moveLogo();
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
// function moveLogo() {
// 	let moveContactInfo = new MappingListener({
// 		selector: '.header .logo',
// 		mobileWrapper: '.mobile-header',
// 		mobileMethod: 'appendTo',
// 		desktopWrapper: '.desktop-header-2',
// 		desktopMethod: 'prependTo',
// 		breakpoint: 992,
// 	}).watch()
// }
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
			992: {
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
			992: {
				slidesPerView: 2,
			},
			576: {
				slidesPerView: 1,
			}
		}
	})
}

Header.toggleMenu();