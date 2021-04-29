require_relative 'bike'
class DockingStation
  attr_reader :bike_docked
  def release_bike
    if @bike_docked == nil 
      fail "No bikes available"
    end
    @bike_docked
  end

  def docked(bike)
    fail 'No space available' if @bike_docked 
    @bike_docked = bike
  end
end
