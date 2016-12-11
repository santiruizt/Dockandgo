class HarborsController < ApplicationController

  def index
    @harbor = Harbor.all
  end

  def search
    @harbor = Harbor.new   #¿el harbor que he seleccioando en la home?
    @docks = @harbor.docks
  end
end
