class Printer
  attr_reader :hash_of_data

  def initialize(hash_of_data)
    @hash_of_data = hash_of_data
  end

  def print_values
    printing(hash_of_data)
  end

  private

  def printing(hash)
    hash.each do |key, value|
      if value.last < 0
        p "#{key}: #{value.first} fills -$#{value.last.abs} income"
      else
        p "#{key}: #{value.first} fills $#{value.last.abs} income"
      end
    end
  end
end
