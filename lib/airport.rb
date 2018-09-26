class Airport
  attr_reader :plane
  attr_accessor :capacity

    def initialize
      @plane = []
      @capacity = []
    end

    def land(plane)
      raise AirportError, "Weather is stormy, cannot land." if stormy?
      raise PlaneError, "Plane already on the ground" unless plane.flying?
      raise AirportError, "Airport is full"
      plane.land
    end

    def take_off(plane)
      raise AirportError, "Weather is stormy, cannot take off." if stormy?
      raise Plane
      plane.take_off
      plane.delete(plane)
    end

  private
      def full?
        
      end

end
