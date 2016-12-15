class RentalsController < ApplicationController
  def new
    @boat = Boat.find_by(id: params[:boat_id])
    @dock = Dock.find_by(id: params[:dock_id])
    @rental = Rental.new
  end

  def create
    @boat = Boat.find_by(id: params[:boat_id])
    @dock = Dock.find_by(id: params[:dock_id])

    @rental = @boat.rentals.new(rental_params)

    if @rental.save
      redirect_to profile_path, notice: "Success! Your rent petition was sent to the dock owner!"
    else
      render :new, alert: "Error! Incorrect input data"
    end
  end

  def show
    @boat = Boat.find_by(id: params[:boat_id])
    @dock = Dock.find_by(id: params[:id])
    # binding.pry
    @harbor = Harbor.find_by_id(@dock.harbor_id)
    @rentals = @dock.rentals
  end

  def availability
    @rental = Rental.find(params[:id])
    @boat = Boat.find_by(id: params[:id])
    @dock = Dock.find(params[:id])
    @rental.update_attributes(availability: true)
    redirect_to dock_info(availability: false)
  end

  def edit
    @rental = Rental.find(params[:id])
  end

  def update
    @rental = Rental.find(params[:id])

    if @rental.update(rental_params)
      redirect to profile_path
    end
  end

  private

  def rental_params
    params.require(:rental).permit(:rent_from, :rent_until, :availability, :boat_id, :dock_id)
  end

end
