class DataCollector
  attr_reader :data

  def initialize(data)
    @data = data
  end

  def collect_data
    data.map { |line| line.strip.split }.map { |array| [array.first + " #{array[1]}", array.last] }
  end
end
