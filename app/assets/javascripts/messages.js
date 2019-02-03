var channel = pusher.subscribe('chat');

function buildChatMessage(name, text) {
		elem = "<div class='chat-message'>" +
			"<p><span>" + name + "</span>: <span>" + text + "</span></p>" + 
			"</div>";
		return elem;
}

function receiveNewMessage(data) {
	$('#chat-window').append(buildChatMessage(data.name, data.text));
	if( $('#chat-window').children().length > 10) {
		$('#chat-window').children().first().remove();
	};
}

channel.bind('new-message', function(data) {
	receiveNewMessage(data);
});
