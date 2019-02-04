var channel = pusher.subscribe('chat-' + chatId);

function getSenderClass(user_id) {
	if (user_id == userId) {
		return "customer_name"
	}
	return "deliverer_name"
}

function buildChatMessage(name, text, user_id) {
	var senderClass = getSenderClass(user_id);
	elem	=	"<div class='chat-message'>"
				+		"<p>"
				+			"<span class='" + senderClass + "'>" + name + "</span>: <span>" + text + "</span>"
				+		"</p>" 
				+	"</div>";
	return elem;
}

function receiveNewMessage(data) {
	$('#message_text').val('');
	$('#chat-feed').append(buildChatMessage(data.name, data.text, data.user_id));
	if( $('#chat-feed').children().length > 10) {
		$('#chat-feed').children().first().remove();
	};
}

channel.bind('new-message', function(data) {
	receiveNewMessage(data);
});
