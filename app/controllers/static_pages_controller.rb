class StaticPagesController < ApplicationController
	def home
		@orders = Order.last(5).reverse
	end

	def prototype_admin
		
	end
end
