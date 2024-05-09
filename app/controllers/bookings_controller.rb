class BookingsController < ApplicationController
  before_action :set_bike, only: [:new, :create]

  def new
    @booking = Booking.new
  end


  def create
    @booking = Booking.new(booking_params)
    @bike = Bike.find(params[:bike_id])
    @booking.bike = @bike
    @booking.user = current_user

    if @booking.save
      redirect_to bikes_path, notice: 'Booking was successfully created'
    else
      render :show, status: :unprocessable_entity
    end
  end


  private

    def set_bike
      @bike = Bike.find(params[:bike_id])
    end


    def booking_params
      params.require(:booking).permit(:start_date, :end_date)
    end
end
