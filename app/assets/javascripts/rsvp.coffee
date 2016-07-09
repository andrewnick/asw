$(document).on 'turbolinks:load', ->

	$('.rsvp-item').each (i, item) ->
		if ($(item).find('.rsvp-textarea').val() != "")
			$(item).find('.rsvp-textarea').addClass('show').removeClass('hide')
			$(item).find('input[type="radio"][value="yes"]').prop( "checked", true );
		else
			$(item).find('input[type="radio"][value="no"]').prop( "checked", true );

	$('#edit_family_1 .rsvp-dietary').on 'change', ->
		console.log($(this))
		show = 	$(this).find('input:checked').val()
		console.log(show);
		if (show =='yes')
			$(this).find('.rsvp-textarea').addClass('show').removeClass('hide')
		else
			$(this).find('.rsvp-textarea').removeClass('show').addClass('hide')
