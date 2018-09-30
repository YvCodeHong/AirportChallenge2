require 'Airport'
 # As an air traffic controller
# So I can get passengers to a destination
# I want to instruct a plane to land at an airport

  describe Airport do
    let(:airport) { described_class.new(10)}
    let(:plane) { double :plane }

    it 'instructs a plane to land' do
    airport = Airport.new(10)
    plane = Plane.new
    allow(airport).to receive(:stormy?).and_return false
    expect { airport.land(plane) }.not_to raise_error
  end

# As an air traffic controller
# So I can get passengers on the way to their destination
# I want to instruct a plane to take off from an airport and confirm that it is no longer in the airport
 it'plane to take off' do
   airport.land(plane)
   expect { airport.take_off(plane) }.not_to raise_error
 end

# As an air traffic controller
# To ensure safety
# I want to prevent takeoff when weather is stormy

it 'only takes off when weather is not stormy' do
  airport = Airport.new
  plane = Plane.new
  expect { airport.take_off(plane) }.to raise_error 'no take_off as weather is stormy'
end

# As an air traffic controller
# To ensure safety
# I want to prevent landing when weather is stormy
it 'no landing allowed when weather is stormy' do
   airport = Airport.new
   plane = Plane.new
   allow(airport).to receive(:stormy?).and_return true
   expect { airport.land(plane) }.to raise_error 'no landing as weather is stormy'
 end

 # As an air traffic controller
 # To ensure safety
 # I want to prevent landing when the airport is full
#
# it 'raise error when full' do
#   airport = Airport.new(10)
#   10.times do
#     airport.land(plane)
#   end
#    expect { airport.land(plane) }.to raise_error 'Airport is full'
# end

 # As the system designer
 # So that the software can be used for many different airports
 # I would like a default airport capacity that can be overridden as appropriate
  # it 'should have a default capacity' do
  #   default_airport = Airport.new
  # end
end
