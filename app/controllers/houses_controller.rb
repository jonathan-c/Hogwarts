class HousesController < ApplicationController
  def index
    debugger
    @houses = House.all
  end

end