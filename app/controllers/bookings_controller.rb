class BookingsController < ApplicationController
  before_action :set_bike, only: [:new, :create]

  def new
    @booking = Booking.new
  end


  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user

    if @booking.save
      redirect_to @booking, notice: 'Booking was successfully created'
    else
      render :new
    end
  end



  private

    def set_bike
      @bike = Bike.find(params[:bike_id])
    end


    def booking_params
      params.require(:booking).permit(:start_date, :end_date, :bike_id) # Add any other parameters you have for a booking
    end
end
