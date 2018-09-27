class Airport
  # DEFAULT_CAPACITY = 10
  #
  attr_reader :plane ,:capacity
  # attr_accessor :capacity
  #
    def initialize
      @plane = []
      @capacity = []
    end
  #
    def land(plane)
  #     raise AirportError, "Weather is stormy, cannot land." if stormy?
  #     raise PlaneError, "Plane already on the ground" unless plane.flying?
  #     raise AirportError, "Airport is full"
      plane
    end
  #
    def take_off
  # #     raise AirportError, "Weather is stormy, cannot take off." if stormy?
  # #     raise PlaneError, "Plane already inflight" if plane.flying?
  # #     raise Airport, "Plane not in current airport" unless registered?(plane)
  #     plane.take_off
  # #     plane.delete(plane)
    end
  # #
  # private
  #     def full?
  #      plane >= capacity
  #     end
  #
  #     def empty?
  #       plane.empty?
  #     end

end
