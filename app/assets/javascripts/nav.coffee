deviceWidthSm = 568
deviceWidthMd = 768
deviceWidthLg = 1024
deviceWidthXl = 1280

hideShowNav = ->
	$nav = $('.nav-list')
	if ($(window).outerWidth() < deviceWidthSm)
		$nav.addClass('nav-mobile')
		$nav.css('display', 'none')
	else
		$nav.removeClass('nav-mobile')
		$nav.css('display', 'flex')

mobileNav = ->
	hideShowNav()
	width = $(window).width()
	$(window).on 'resize', ->
		if $(@).width() != width
			width = $(@).width()
			hideShowNav()

	$('.btn-mobile').on 'click', ->
		$nav = $('.nav-slide ul')
		if $nav.css('display') == 'none'
			$nav.velocity "slideDown", {duration: 500}
		else
			$nav.velocity "slideUp", {duration: 500}
		
$(document).on 'turbolinks:load', ->
	mobileNav()
