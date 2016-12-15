class DocksController < ApplicationController
  def new
    @user = current_user
    @harbor = Harbor.all
    @dock = @user.docks.new
  end

  def index
    @user = current_user
    # @harbor = Harbor.find_by(id: params[:harbor_id])
    @boat = Boat.find_by(id: params[:id])

    if user_signed_in?
      @harbor = Harbor.find_by(id: params[:harbor_id])
      @docks = @harbor.docks.where.not(user_id: current_user.id).where('size > ?', @boat.size).all
    else
      @harbor = Harbor.find_by(id: params[:id])
      @docks = @harbor.docks.where('size > ?', params[:size]).all
    end
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

  def edit
    @user = current_user
    @dock = @user.docks.find(params[:id])
  end

  def update
    @user = current_user
    @dock = @user.docks.find(params[:id])

    if @dock.update(dock_params)
      redirect_to profile_path
    end
  end

  def destroy
    @user = current_user
    @dock = @user.docks.find(params[:id])
    @dock.destroy
    redirect_to profile_path
  end

  def show
    @user = current_user
    @docks = @user.docks
    @dock = @docks.find(params[:id])
    @harbor = Harbor.find_by_id(@dock.harbor_id)
    @rentals = @dock.rentals
    # @rental = @rentals.find(params[:id])

  end


  private

  def dock_params
    params.require(:dock).permit(:size, :price, :dock_plate, :harbor_id)
  end

end
