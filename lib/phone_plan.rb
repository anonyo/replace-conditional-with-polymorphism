class PhonePlan
  attr_reader :number_of_phones, :price, :type

  def initialize(number_of_phones:, price:, type:)
    @number_of_phones = number_of_phones
    @price = price
    @type = type
  end

  def cost
    cost_calulator.calculate
  end

  private

  def args_hash
    {
      number_of_phones: number_of_phones,
      price: price,
      type: type
    }
  end

  def cost_calulator
    @cost_calculator ||= CostCalculator.new(args_hash)
  end
end
