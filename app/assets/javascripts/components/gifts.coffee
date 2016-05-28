@Gifts = React.createClass
	getInitialState: ->
      gifts: @props.data
    getDefaultProps: ->
      gifts: []
    updateGift: (gift, data) ->
      index = @state.gifts.indexOf gift
      gifts = React.addons.update(@state.gifts, { $splice: [[index, 1, data]] })
      @replaceState gifts: gifts
      console.log(@state.gifts)
    render: ->
      React.DOM.div
        className: 'gifts'
        React.DOM.h2
          className: 'item'
          'Gifts'
        React.DOM.div
        	className: 'gift'
	        for gift in @state.gifts
	              React.createElement Gift, key: gift.id, gift: gift, handleUpdateGift: @updateGift