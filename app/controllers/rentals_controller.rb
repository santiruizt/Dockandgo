class RentalsController < ApplicationController
  def new
    @user = current_user
    @boats = @user.boats
    @dock = Dock.find_by(id: params[:id])

  end

  def create

  end
end
