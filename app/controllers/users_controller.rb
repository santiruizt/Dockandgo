class UsersController < ApplicationController
  before_action :authenticate_user!

  def profile
    @user = current_user
    @docks = @user.docks
    render 'users/profile'
  end

  def index
    @users = User.all
  end

end
