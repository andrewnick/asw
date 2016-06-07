@Gift = React.createClass
	handleUpdate: (e) ->
		if ReactDOM.findDOMNode(@refs.chosen).checked
			user_id = @props.current_user

		data =
			chosen: ReactDOM.findDOMNode(@refs.chosen).checked
			user_id: user_id
		$.ajax
	        method: 'PUT'
	        url: "/gifts/#{ @props.gift.id }"
	        dataType: 'JSON'
	        data:
	          gift: data
	        success: (data) =>
	          @props.handleUpdateGift @props.gift, data

	render: ->
		React.DOM.form
			className: 'form-inline'
			React.DOM.input
				type: 'checkbox'
				className: 'checkbox'
				name: 'chosen'
				defaultChecked: @props.gift.chosen
				onClick: @handleUpdate
				ref: 'chosen'
				disabled: !(@props.gift.user_id == @props.current_user ||  @props.gift.user_id == null)
			React.DOM.label null, @props.gift.item
			React.DOM.input
				type: 'hidden'
				name: 'user_id'
				value: @props.gift.user_id == null ?  "" : @props.gift.user_id
				onClick: @handleUpdate
				ref: 'user_id'