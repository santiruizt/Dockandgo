class RentalsController < ApplicationController
  def new
    @boat = Boat.find_by(id: params[:boat_id])
    @dock = Dock.find_by(id: params[:dock_id])
    @rental = Rental.new
  end

  def create
    @boat = Boat.find_by(id: params[:boat_id])
    @dock = Dock.find_by(id: params[:dock_id])
    # @rental = Rental.new(rental_params, dock: @dock, boat: @boat)
    @rental = @boat.rentals.new(rental_params)

    if @rental.save
      redirect_to profile_path, notice: "Success! Your rent petition was sent to the dock owner!"
    else
      render :new, alert: "Error! Incorrect input data"
    end
  end


  private

  def rental_params
    params.require(:rental).permit(:rent_from, :rent_until, :availability, :boat_id, :dock_id)
  end

end
