require_relative 'bike'
require_relative 'bike_container'

class Garage

  include BikeContainer


  def fix_bikes

    broken_bikes.each do |broken_bike|
      broken_bike.fix
    end

  end


  private


  def broken_bikes
    bikes.reject { |bike| bike.working? }

  end

end
