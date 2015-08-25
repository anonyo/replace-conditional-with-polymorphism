class BusinessType < Base
  def matches?(type)
    type == 'business'
  end
  def perform
    number_of_phones * price * discount_amount
  end
  private
  def discount_amount
    if number_of_phones < 50
      0.75
    elsif number_of_phones > 50
      0.50
    else
      1
    end
  end
end
