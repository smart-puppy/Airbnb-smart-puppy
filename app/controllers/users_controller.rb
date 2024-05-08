class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]
end
