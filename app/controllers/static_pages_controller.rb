class StaticPagesController < ApplicationController
	def home
		@user = User.find(1)

		@orders = Order.last(5).reverse

		@current_location = Location.last
		if !@current_location
			@current_location = {lat: nil, long: nil}
		end

		@chat = Chat.last

		@message = Message.new

	end

	def admin_order
    Order.create(order: Faker::Food.dish, restaurant: Faker::Company.name, customer: Faker::Name.name)
	end

	def admin_location
		Location.create(lat: 20 * rand, long: 20 * rand)
	end

	def admin_message
		Message.create(chat_id: 1, user_id: 2, text: Faker::Shakespeare.hamlet_quote)
	end
end
