class BoatsController < ApplicationController

  def new
    @user = current_user
    @boat = @user.boats.new
  end

  def create
    @user = current_user
    @boats = @user.boats
    @new_boat = @user.boats.new(boat_params)

    if @new_boat.save
      redirect_to profile_path
    else
      render 'new'
    end
  end

  def destroy
    @user = current_user
    @boat = @user.boats.find_by(params[:id])
    @boat.destroy
    redirect_to profile_path
  end


  private

  def boat_params
    params.require(:boat).permit(:size, :boat_plate)
  end

end
