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
      if value.include?("created") == false
        hash[key] = [0, 0] 
      else
        profit = value.drop_while { |event| event != "created" }
        filled = profit.count('filled') - profit.count('returned')
        hash[key] = [filled, (filled * 5 + profit.count('returned') * (-1))]
      end
    end
  end
end
