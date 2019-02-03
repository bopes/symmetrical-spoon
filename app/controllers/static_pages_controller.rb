class StaticPagesController < ApplicationController
	def home
		@orders = Order.last(5).reverse

		@current_location = Location.last
		if !@current_location
			@current_location = {lat: nil, long: nil}
		end

		@chat = Chat.last

	end

	def prototype_admin
	end
end
