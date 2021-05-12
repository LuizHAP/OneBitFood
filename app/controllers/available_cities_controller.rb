class AvailableCitiesController < ApplicationController
  def index
    @available_cities = Restaurant.all.map { |r| r.city }.uniq
    render json: @available_cities
  end
end
