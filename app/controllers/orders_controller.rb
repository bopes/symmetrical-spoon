class OrdersController < ApplicationController
  def create
    Order.create(order: Faker::Food.dish, restaurant: Faker::Company.name, customer: Faker::Name.name)
  end
end
