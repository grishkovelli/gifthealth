class Printer
  attr_reader :hash

  def initialize(hash)
    @hash = hash
  end

  def print_values
    hash.each do |key, value|
      if value.last < 0
        p "#{key}: #{value.first} fills -$#{value.last.abs} income"
      else
        p "#{key}: #{value.first} fills $#{value.last.abs} income"
      end
    end
  end
end
