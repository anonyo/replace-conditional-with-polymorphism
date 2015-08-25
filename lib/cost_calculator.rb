class CostCalculator < Base
  def types_initialized
    individual_type = IndividualType.new(cost_args)
    family_type = FamilyType.new(cost_args)
    business_type = BusinessType.new(cost_args)
    [ individual_type, family_type, business_type ]
  end

  def find_type
    types_initialized.find { |type_initialized| type_initialized.matches?(type) }
  end

  def calculate
    find_type.perform
  end
  private
  def cost_args
    { type: 'individual',
      number_of_phones: number_of_phones,
      price: price }
  end
end
