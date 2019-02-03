class Location < ApplicationRecord
	after_create :notify_pusher, on: :create

  def notify_pusher
    Pusher.trigger('locations', 'new-location', {lat: self.lat, long: self.long})
  end
end
