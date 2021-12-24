class TotalIncome
  attr_reader :hash_of_data

  def initialize(hash_of_data)
    @hash_of_data = hash_of_data
  end

  def total_income
    counting_for_each_client(hash_of_data)
  end

  private

  def counting_for_each_client(hash)
    patient = Hash.new
    value = hash.to_a.map { |h| [h.first.first, h.last] }

    value.uniq { |el| el.first }.each do |el|
      patient[el.first] = value.select { |arr| arr.include?(el.first) }.map { |arr| arr.last }.transpose.map { |arr| arr.sum }
    end

    patient
  end
end
