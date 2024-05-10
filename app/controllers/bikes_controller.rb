class BikesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @bikes = Bike.all
  end

  def show
    @bike = Bike.find(params[:id])
    @booking = Booking.new
  end

  def new
    @bike = Bike.new
  end

  def create
    @bike = Bike.new(bike_params)
    @bike.user = current_user
    if @bike.save
      redirect_to bikes_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @bike = Bike.find(params[:id])
    @bike.destroy
    redirect_to bikes_path, notice: "Bike deleted successfully."
  end

  private

  def bike_params
    params.require(:bike).permit(:price, :description, :colour, :electric, :speed, :location, :photo)
  end
end
