# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(".no-click-gift").css 'width', $(".click-gifts").width()
width = $(window).width();
$(window).resize ->
	if($(this).width() != width)
		width = $(this).width()
		$(".no-click-gift").css 'width', $(".click-gifts").width()