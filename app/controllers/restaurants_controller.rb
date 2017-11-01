class RestaurantsController < ApplicationController
  def index
  end

  def create
  end

  def new
  end

  def show
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :phone_number, :address, :category)
  end
end
