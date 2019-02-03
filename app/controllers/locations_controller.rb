class LocationsController < ApplicationController
  def create
    Location.create(lat: 20 * rand, long: 20 * rand)
  end
end
