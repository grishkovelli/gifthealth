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
    value = hash_to_array(hash)

    value.uniq { |el| first_element(el) }.each do |el|
      patient[first_element(el)] = value_setter(value, el)
    end

    patient
  end

  def hash_to_array(hash)
    hash.to_a.map { |h| [first_element(h).first, h.last] }
  end

  def first_element(el)
    el.first
  end

  def value_setter(value, el)
    value.select { |arr| arr.include?(first_element(el)) }.map { |arr| arr.last }.transpose.map { |arr| arr.sum }
  end
end
