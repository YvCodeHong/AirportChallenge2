require_relative 'weather'

class Airport
  attr_reader :plane, :capacity, :weather

    DEFAULT_CAPACITY = 10
    
    def initialize(weather = Weather.new, capacity = DEFAULT_CAPACITY)
      @plane = []
      @capacity = capacity
      @weather = weather
    end

    def land(plane)
      raise "Airport is full" if full?
      raise 'no landing as weather is stormy' if stormy?
      @plane << plane
    end

    def take_off(plane)
      raise 'Weather is stormy' if stormy?
      raise  "Plane not in current airport" unless @plane.include?(plane)
      plane.take_off
      plane
    end

  private

      def stormy?
        @weather.stormy?
      end

      def full?
       @plane.length >= @capacity
      end


end
