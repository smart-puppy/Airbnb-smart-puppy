class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]


  def index
    @users = User.all
    render @users
  end


  def show
    render @user
  end


  def create
    @user = User.new(user_params)
    @user.save
  end


  def update
    @user.update(user_params)
  end


  def destroy
    @user.destroy
  end



  private

  def set_user
    @user = User.find(params[:id])
  end


  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end


end
