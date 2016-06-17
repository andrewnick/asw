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
	$(window).on 'resize', ->
		hideShowNav()

	$('.btn-mobile').on 'click', ->
		$nav = $('.nav ul')
		if $nav.css('display') == 'none'
			$nav.velocity "slideDown", {duration: 500}
		else
			$nav.velocity "slideUp", {duration: 500}
		
$(document).on 'turbolinks:load', ->
	console.log("load");
	mobileNav()

# $(document).on 'turbolinks:change', ->
# 	console.log('change');
# 	mobileNav()
