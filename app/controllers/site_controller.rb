class SiteController < ApplicationController

  def home
    @harbor = Harbor.new
  end
end
