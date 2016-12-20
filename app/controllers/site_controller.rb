class SiteController < ApplicationController
skip_before_action :authenticate_user!, only: :home

  def home
    @harbor = Harbor.new
    @boat = Boat.new
  end

end
