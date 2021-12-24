class DataGrouping
  attr_reader :data

  def initialize(data)
    @data = data
  end

  def group_data
    grouping(data)
  end

  private

  def grouping(array_of_data)
    hash = Hash.new

    array_of_data.uniq { |key| key.first }.each { |key| hasherize(hash, array_of_data, key) }

    hash
  end

  def hasherize(hash, array_of_data, key)
    hash[key.first] = value_setter(array_of_data, key)
  end

  def value_setter(array_of_data, key)
    array_of_data.select { |array| array.include?(key.first) }.map { |array| array.last }
  end
end
