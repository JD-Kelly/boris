require_relative 'bike'
class DockingStation
  attr_reader :bikes_docked
  
  def initialize
    @bikes_docked = []
  end

  def release_bike
    if @bikes_docked.count == 0 
      fail "No bikes available"
    end
    @bikes_docked.pop
  end

  def docked(bike)
    fail 'No space available' if @bikes_docked.count >= 20
    @bikes_docked << bike
  end
end
