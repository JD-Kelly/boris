require_relative 'bike'
class DockingStation
  attr_reader :bikes_docked
  
  def initialize
    @bikes_docked = []
  end

  def release_bike
    if empty? 
      fail "No bikes available"
    end
    @bikes_docked.pop
  end

  def docked(bike)
    fail 'No space available' if full?
    @bikes_docked << bike
  end
  private
  def full?
    @bikes_docked.count >= 20
  end

  def empty? 
    @bikes_docked.count == 0
  end
end
