class DocksController < ApplicationController
  def new
    @user = current_user
    @harbor = Harbor.all
    @dock = @user.docks.new
  end

  def create
    @user = current_user
    @docks = @user.docks
    @new_dock = @user.docks.new(dock_params)

    if @new_dock.save
      redirect_to profile_path
    else
      render 'new'
    end
  end

  def destroy
    @user = current_user
    @dock = @user.docks.find_by(params[:id])
    @dock.destroy
    redirect_to profile_path
  end

  private

  def dock_params
    params.require(:dock).permit(:size, :price, :dock_plate, :harbor_id)

  end

end
