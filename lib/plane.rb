class Plane
  def initialize
    @flying = true
    @airport = nil
  end

  def take_off
    raise "Cannot take off as plane is already flying"
  end

  def land(airport)
    raise "Plane Already landed" unless @flying
    @flying = false
    @airport = airport
  end
end
