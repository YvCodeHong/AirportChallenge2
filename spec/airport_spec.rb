require 'airport'

describe Airport do
  subject(:airport) { described_class.new}

  describe '#land(plane)' do
    it 'instructs a plane to land' do
      expect(airport).to respond_to(:land).with(1).argument
    end
end

 describe '#take_off(plane)' do
    it 'confirms take off' do
     expect(airport).to respond_to(:take_off).with(1).argument
    end
end




end
