require 'airport'

describe Airport do
  let(:plane) { double :plane }
  subject(:airport) { described_class.new(10)}

  describe '#land' do
    context 'not stormy' do
      it 'instructs a plane to land' do
      allow(airport).to receive(:stormy?).and_return false
      expect(airport).to respond_to(:land).with(1).argument
    end

    # it 'raises error if asked to land when stormy' do
    #   allow(airport).to receive(:stormy?).and_return true
    #   expect { airport.land(plane) }.to raise_error 'no landing as weather is stormy'
    # end

    context 'when full' do
    it 'raise error when full' do
       10.times do
       airport.land(plane)
     end
       expect { airport.land(plane) }.to raise_error 'Airport is full'
    end
end

 describe '#take_off' do
    it 'confirms take off' do
     expect(airport).to respond_to(:take_off).with(1).argument
    end

    # it 'raises error if asked to take off when stormy ' do
    #   allow(airport).to receive(:stormy?).and_return true
    #   expect{ airport.take_off(plane) }.to raise_error 'Weather is stormy, cannot take off'
    # end
  end
end
end
end
