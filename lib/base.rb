class Base
  attr_reader :number_of_phones, :price, :type
  def initialize(args)
     @number_of_phones = args[:number_of_phones]
     @price = args[:price]
     @type = args[:type]
  end
end
