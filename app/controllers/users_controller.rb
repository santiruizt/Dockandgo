class UsersController < ApplicationController
  before_action :authenticate_user!

  def profile
    @user = current_user
    @docks = @user.docks
    @boats = @user.boats
    # @rentals = @user.docks.rentals
    render 'users/profile'
  end

  def index
    @users = User.all
  end

end
