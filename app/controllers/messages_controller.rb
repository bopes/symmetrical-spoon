class MessagesController < ApplicationController
  def create
    Message.create(chat_id: 1, user_id: 2, text: Faker::Shakespeare.hamlet_quote)
  end
end
