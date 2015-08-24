require 'spec_helper'

describe CostCalculator do
  describe '#perform' do
    it 'returns correct cost when type is inidividual' do
      args = {
        number_of_phones: 5,
        price: 10,
        type: 'individual'
      }
      cost_calculator = CostCalculator.new(args)
      expect(cost_calculator.calculate).to eq 50
    end
  end
end
