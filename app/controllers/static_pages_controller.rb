class StaticPagesController < ApplicationController
	def home
		@orders = Order.last(5).reverse
	end
end
