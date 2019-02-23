/* Intento fallido de java script*/


$(document).ready(fuction(){
		var altura = $('.menu').offset().top;
		
	$(window).on('scroll', fuction(){
			if( $(window).scrollTop() > altura ){
		$('.menu').addClass('menu-fixed');
			} else {
		$('.menu').removeClass('menu-fixed');
	}
});
});



