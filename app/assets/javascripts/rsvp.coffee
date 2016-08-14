$(document).on 'turbolinks:load', ->

	$('.rsvp-item').each (i, item) ->
		console.log(item);
		if ($(item).find('.rsvp-textarea-wrapper').val() != "")
			$(item).find('.rsvp-textarea-wrapper').addClass('show').removeClass('hide')
			$(item).find('input[type="radio"][value="yes"]').prop( "checked", true );
		else
			$(item).find('input[type="radio"][value="no"]').prop( "checked", true );

	$('.edit_family .rsvp-dietary').on 'change', ->
		console.log("change");
		show = 	$(this).find('input:checked').val()
		if (show =='yes')
			$(this).find('.rsvp-textarea-wrapper').addClass('show').removeClass('hide')
		else
			$(this).find('.rsvp-textarea-wrapper').removeClass('show').addClass('hide')
