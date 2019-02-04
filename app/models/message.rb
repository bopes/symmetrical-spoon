class Message < ApplicationRecord
	belongs_to :chat
	belongs_to :user

  after_create :notify_pusher, on: :create

  def notify_pusher
    Pusher.trigger("chat-#{self.chat.id}", 'new-message', {name: self.user.name, user_id: self.user.id, text: self.text})
  end
end
