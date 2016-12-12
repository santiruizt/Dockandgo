class SiteController < ApplicationController

  def home
    @harbor = Harbor.new
    @boat = Boat.new

  end

end
