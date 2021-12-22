class TotalIncome
  attr_reader :hash

  def initialize(hash)
    @hash = hash
  end

  def total_income
    patient = Hash.new
    value = hash.to_a.map { |h| [h.first.first, h.last] }

    value.uniq { |el| el.first }.each do |el|
      patient[el.first] = value.select { |arr| arr.include?(el.first) }.map { |arr| arr.last }.transpose.map { |arr| arr.sum }
    end

    patient
  end
end
