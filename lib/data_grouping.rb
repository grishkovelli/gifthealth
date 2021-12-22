class DataGrouping
  attr_reader :data

  def initialize(data)
    @data = data
  end

  def group_data
    hash = Hash.new

    data.uniq { |key| key.first }.each do |key|
      hash[key.first.split] = data.select { |array| array.include?(key.first) }.map { |array| array.last }
    end

    hash
  end
end
