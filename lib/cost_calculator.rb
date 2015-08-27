class CostCalculator < Base
  def calculate
    find_type.new(cost_args).perform
  end
  private
   def find_type
     @find_type = Object.const_get("#{type.capitalize}Type")
   end
  def cost_args
    { type: 'individual',
      number_of_phones: number_of_phones,
      price: price }
  end
end
