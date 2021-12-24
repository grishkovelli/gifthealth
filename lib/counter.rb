class Counter
  attr_reader :hash_of_data

  def initialize(hash_of_data)
    @hash_of_data = hash_of_data
  end

  def count_values
    counting(hash_of_data)
  end

  private

  def counting(hash)
    hash.each do |key, value|
      value.include?("created") ? hash[key] = value_counting(value) : hash[key] = [0, 0]
    end
  end

  def value_counting(value)
    profit = profit_setter(value)
    filled = filled_setter(profit)
    total_count(profit, filled)
  end

  def profit_setter(value)
    value.drop_while { |event| event != "created" }
  end

  def filled_setter(profit)
    profit.count('filled') - profit.count('returned')
  end

  def total_count(profit, filled)
    [filled, (filled * 5 - profit.count('returned'))]
  end
end
