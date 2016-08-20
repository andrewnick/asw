@Gift = React.createClass
	componentDidMount: () ->
		if ReactDOM.findDOMNode(@refs.chosen).disabled
			ReactDOM.findDOMNode(@refs.chosen).parentNode.className += " form-disabled";
			# console.log(ReactDOM.findDOMNode(@refs.chosen).parentNode.className += " otherclass";)
	handleUpdate: (e) ->
		if ReactDOM.findDOMNode(@refs.chosen).checked
			user_id = @props.current_user
		else
			user_id = null

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
				className: 'gift-item checkbox'
				name: 'chosen'
				defaultChecked: @props.gift.chosen
				onClick: @handleUpdate
				ref: 'chosen'
				id: @props.gift.item
				disabled: !(@props.gift.user_id == @props.current_user ||  @props.gift.user_id == null)
			React.DOM.label 
				className: 'gift-item-label'
				htmlFor: @props.gift.item, @props.gift.item
			React.DOM.input
				type: 'hidden'
				name: 'user_id'
				value: @props.gift.user_id == null ?  "" : @props.gift.user_id
				onClick: @handleUpdate
				ref: 'user_id'