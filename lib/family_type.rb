class FamilyType < Base
  def matches?(type)
    type == 'family'
  end

  def perform
    subtotal
  end
  private
  def subtotal
    price + total_cost_for_extra_phones
  end

  def total_cost_for_extra_phones
    number_of_extra_phones * cost_per_extra_phone
  end

  def number_of_extra_phones
    number_of_phones - 1
  end

  def cost_per_extra_phone
    10
  end
end
