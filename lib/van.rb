require_relative 'bike'
require_relative 'bike_container'

class Van

  include BikeContainer

  def load bike

    fail 'The bike is not broken' if bike.working?
    fail 'The van is full' if full?
    bikes << bike

  end

end
