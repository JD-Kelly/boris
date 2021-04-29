require_relative 'bike'
class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :bikes_docked
  attr_reader :capacity
  
  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes_docked = []
    @capacity = capacity
  end

  def release_bike
    if empty? || @bikes_docked.last.working? == false
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
    @bikes_docked.count >= @capacity
  end

  def empty? 
    @bikes_docked.count == 0
  end
end
