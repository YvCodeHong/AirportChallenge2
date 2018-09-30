require_relative 'weather'

class Airport
  DEFAULT_CAPACITY = 10
  attr_reader :plane
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
      raise  "Plane not in current airport" unless @planes.include?(plane)
      plane.take_off
      plane
    end

  private
      def full?
       @plane.length >= @capacity
      end

      def stormy?
        @weather.stormy?
      end
end
