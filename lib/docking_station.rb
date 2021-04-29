require_relative 'bike'
class DockingStation
  attr_reader :bike_docked
  def release_bike
    Bike.new
  end

  def docked(bike)
    @bike_docked = bike
  end
end
