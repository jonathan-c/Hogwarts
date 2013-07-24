class HousesController < ActionController
  def index
    debugger
    @houses = House.all
  end

end