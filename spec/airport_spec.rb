require 'airport'

describe Airport do

  describe 'initialize' do
    it 'allows reading and writing for :plane' do
        Airport = Airport.new
        expect(Airport.plane).to eq []
      end

      it 'allows reading and writing for :capacity' do
        expect(Airport.capacity).to eq []
    end
  end


  describe '#land(plane)' do
    it 'confirm successful landing' do
      expect { Airport.land(plane) }.to eq 'land'
    end
end

describe '#take_off(plane)' do
  it 'confirms take off' do
    expect{ Airport.take_off(plane) }.to eq
  end
end 
end
