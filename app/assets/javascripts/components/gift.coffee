@Gift = React.createClass
	handleUpdate: (e) ->
		console.log @props
		# e.preventDefault()
		data =
			chosen: ReactDOM.findDOMNode(@refs.chosen).checked
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
			React.DOM.div null, @props.gift.item