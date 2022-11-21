class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    @restaurants = Restaurant.all
  end

  def show
    @Restaurant = restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new

    if @restaurant.save
      redirect_to @restaurant, notice: `Restaurant was successfuly created.`
    else
      render :new
    end
  end

  def set_restaurant
    @restaurant= Restaurant.find(params[:id])
  end
end
