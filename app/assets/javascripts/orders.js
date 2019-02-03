var channel = pusher.subscribe('orders');

function buildOrderFeedDisplay(order, restaurant) {
		elem = "<div class='order_feed_display fade_in'>" +
			"<p>Order: <span class='order_display_order'>" + order + "</span></p>" +
			"<p>Restaurant: <span class='order_display_restaurant'>" + restaurant + "</span></p>" +
			"</div>";
		return elem;
}

function receiveNewOrder(data) {
	$('#feed').prepend(buildOrderFeedDisplay(data.order, data.restaurant));
	if( $('#feed').children().length > 5) {
		$('#feed').children().last().remove();
	};
	setTimeout(function(){
		$('#feed').children().first().removeClass('fade_in');
	}, 5000)
}

channel.bind('new-order', function(data) {
	receiveNewOrder(data);
});
