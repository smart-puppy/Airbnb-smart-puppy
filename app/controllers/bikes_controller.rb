class BikesController < ApplicationController

  def index
    @bikes = Bike.all
<<<<<<< HEAD
=======
  end
  def show
    @bike = Bike.find(params[:id])
>>>>>>> 1f02a720e26cb2aea4931958c51c17e0dc2dad5f
  end
end
