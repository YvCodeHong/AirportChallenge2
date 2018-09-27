require 'Airport'

# As an air traffic controller
# So I can get passengers to a destination
# I want to instruct a plane to land at an airport

  describe Airport do
  it 'instructs a plane to land' do
    airport = Airport.new
    plane = Plane.new
    allow(airport).to receive(:stormy?).and_return false
    expect { airport.land(plane) }.not_to raise_error
  end

# As an air traffic controller
# So I can get passengers on the way to their destination
# I want to instruct a plane to take off from an airport and confirm that it is no longer in the airport
 it'plane to take off' do
   airport = Airport.new
   plane = Plane.new
   expect { airport.take_off(plane) }.not_to raise_error
 end

 # As an air traffic controller
 # To ensure safety
 # I want to prevent takeoff when weather is stormy

it 'no landing allowed when weather is stormy' do
   airport = Airport.new
   plane = Plane.new
   allow(airport).to receive(:stormy?).and_return true
   expect { airport.land(plane) }.to raise_error 'no landing as weather is stormy'
 end
end
