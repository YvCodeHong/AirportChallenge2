require 'airport'

describe Airport do

  # it 'has a default capacity' do
  #   expect(Airport.capacity).to eq Airport:: DEFAULT_CAPACITY
  # end
  describe '#land(plane)' do
    it 'instructs a plane to land' do
      expect(subject).to respond_to(:land).with(1).argument
    end
end

#  describe '#take_off(plane)' do
#     it 'confirms take off' do
#       expect{ Airport.take_off(plane) }.to eq
#     end
# end



end
