class HarborsController < ApplicationController

  def index
    @harbor = Harbor.all
  end

  # def show
  #   @harbor = Harbor.find_by(id: params[:id])
  #   @docks = @harbor.docks
  # end


end
