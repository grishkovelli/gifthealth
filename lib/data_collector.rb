class DataCollector
  attr_reader :data

  def initialize(data)
    @data = data
  end

  def collect_data
    collecting(data)
  end

  private

  def collecting(array_of_data)
    array_of_data.map { |line| array_setter(string_separator(line)) }
  end

  def string_separator(line)
    line.strip.split
  end

  def array_setter(array)
    [[array.first, array[1]], array.last]
  end
end
