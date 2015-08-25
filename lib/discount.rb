class Discount < Struct.new(:number_of_phones)
  def amount
    number_of_phones <= 50 ?  0.75 : 0.5
  end
end
