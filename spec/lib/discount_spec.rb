require 'spec_helper'
describe Discount do
  describe '#amount' do
    it 'returns 0.75 when number_of_phones is less than 50' do
      discount = Discount.new(49)

      expect(discount.amount).to eq 0.75
    end

    it 'returns 0.50 when number_of_phones is more than 50' do
      discount = Discount.new(51)

      expect(discount.amount).to eq 0.5
    end
  end
end
