require 'airport'

describe Airport do
  let(:plane) { double :plane }
  subject(:airport) { described_class.new}

  describe '#land(plane)' do
    it 'instructs a plane to land' do
      allow(airport).to receive(:stormy?).and_return false
      expect(airport).to respond_to(:land).with(1).argument
    end
end

 describe '#take_off(plane)' do
    it 'confirms take off' do
     expect(airport).to respond_to(:take_off).with(1).argument
    end

    it 'raises error if asked to land when stormy' do
      allow(airport).to receive(:stormy?).and_return true
      expect { airport.land(plane) }.to raise_error 'no landing as weather is stormy'
    end
end
end
