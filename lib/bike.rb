class Bike
    attr_reader :bike_broken
    def initialize
        @bike_broken = false
    end
    def broken
        @bike_broken = true
    end
    def working?
        true unless @bike_broken
    end
  end