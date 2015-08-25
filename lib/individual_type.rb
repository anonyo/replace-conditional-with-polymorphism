class IndividualType < Base
  def matches?(type)
    type == 'individual'
  end

  def perform
    number_of_phones * price
  end
end
