class BusinessType < Base
  def matches?(type)
    type == 'business'
  end
  def perform
    number_of_phones * price * discount_amount
  end
  private
  def discount_amount
    discount.amount
  end
  def discount
    @discount ||= Discount.new(number_of_phones)
  end
end
