class HarborsController < ApplicationController

  def home
    @harbor = Harbor.all
  end

end
