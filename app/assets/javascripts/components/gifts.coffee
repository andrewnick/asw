@Gifts = React.createClass
	getInitialState: ->
      gifts: @props.data
    getDefaultProps: ->
      gifts: []
    updateGift: (gift, data) ->
      index = @state.gifts.indexOf gift
      gifts = React.addons.update(@state.gifts, { $splice: [[index, 1, data]] })
      @replaceState gifts: gifts
    render: ->
      React.DOM.div
        className: 'gifts'
        React.DOM.div
        	className: 'gift'
	        for gift in @state.gifts
	              React.createElement Gift, key: gift.id, gift: gift, handleUpdateGift: @updateGift, current_user: @props.current_user