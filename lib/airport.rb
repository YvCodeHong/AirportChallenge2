class Airport
  # DEFAULT_CAPACITY = 10
  #
  attr_reader :plane
    def initialize(capacity)
      @plane = []
      @capacity = capacity
    end
  #
    def land(plane)
      raise "Airport is full" if full?
      # raise 'no landing as weather is stormy' if stormy?
  #     raise AirportError, "Weather is stormy, cannot land." if stormy?
  #     raise PlaneError, "Plane already on the ground" unless plane.flying?
      @plane << plane
    end
  #
    def take_off(plane)
      # raise 'Weather is stormy, cannot take off.' if stormy?
  # #     raise PlaneError, "Plane already inflight" if plane.flying?
  # #     raise Airport, "Plane not in current airport" unless registered?(plane)
  #     plane.take_off
  # #     plane.delete(plane)
    end
  # #
  private
      def full?
       @plane.length >= @capacity
      end
  #
    def stormy?
      rand(1..20) > 14
    end

end
