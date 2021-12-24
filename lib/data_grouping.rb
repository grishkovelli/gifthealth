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

    array_of_data.uniq { |key| key.first }.each do |key|
      hash[key.first] = data.select { |array| array.include?(key.first) }.map { |array| array.last }
    end

    hash
  end
end
