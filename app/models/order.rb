class Order < ApplicationRecord
   after_create :notify_pusher, on: :create

  def notify_pusher
    Pusher.trigger('orders', 'new-order', {order: self.order, restaurant: self.restaurant})
  end
end