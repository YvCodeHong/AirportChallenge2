require 'airport'

describe Airport do
  let(:plane) { double :plane }
  let (:airport) { Airport.new(10)}
  let (:weather) { double :weather }

  describe '#land' do
    context 'not stormy' do
      before do
        allow(airport).to receive(:stormy?).and_return false
      end
      it 'instructs a plane to land' do
        expect(airport).to respond_to(:land).with(1).argument
    end

   context 'when full' do
    it 'raise error when full' do
       10.times do
       airport.land(plane)
     end
       expect { airport.land(plane) }.to raise_error 'Airport is full'
    end
  end
end
  context 'when weather is stormy' do
    it 'planes not allowed to land' do
      allow(airport).to receive(:stormy?).and_return true
      expect { airport.land(plane) }.to raise_error 'no landing as weather is stormy'
      end
    end

 describe '#take_off' do
   context 'not stormy' do
     before do
       allow(weather).to receive(:stormy?).and_return false
     end
     it 'confirms take off' do
       expect(airport).to respond_to(:take_off).with(1).argument
    end


    context 'stormy' do
      before do
        allow(airport).to receive(:stormy).and_return true
      end
     it 'raises error' do
       allow(airport).to receive(:stormy?).and_return true
       expect{ airport.take_off(plane) }.to raise_error 'Weather is stormy'
    end
  end
end
end
end
end
