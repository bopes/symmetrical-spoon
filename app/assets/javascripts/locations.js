var channel = pusher.subscribe('locations');

function receiveNewLocation(data) {
	$('#lat').text(data.lat);
	$('#long').text(data.long);
}

channel.bind('new-location', function(data) {
	receiveNewLocation(data);
});
