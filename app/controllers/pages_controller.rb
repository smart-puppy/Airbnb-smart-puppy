class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :bikes]

  def home
  end

  def bikes
    @bikes = Bike.all
    render 'bikes/bikes'
  end
end
