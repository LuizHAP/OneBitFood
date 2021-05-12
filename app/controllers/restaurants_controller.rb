class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: :show

  def index
    @restaurants = Restaurant.all
    filter_by_query if params[:q].present?
    filter_by_city if params[:city].present?
  end

  def show
  end

  private
  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def filter_by_query
    @restaurants = @restaurants.ransack(name_or_description_cont: params[:q]).result
  end

  def filter_by_city
    @restaurants = @restaurants.where(city: params[:city])
  end
end
