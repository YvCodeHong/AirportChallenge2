require 'plane'

describe Plane do
  subject(:plane) { described_class.new }
  let(:airport) { double :airport }

  describe "#take_off" do
    it { is_expected.to respond_to :take_off }

    it 'raises error if plane is flying' do
      expect { plane.take_off }.to raise_error "Cannot take off as plane is already flying"
    end
  end

  describe '#land' do
    it 'error is raised if already landed' do
      plane.land(airport)
      expect { plane.land(airport) }.to raise_error 'Plane Already landed'
    end
  end
end
