class Perfomance
  attr_reader :file, :validator, :reader, :collector, :grouping, :counter, :income, :printer

  def initialize(file, validator, reader, collector, grouping, counter, income, printer)
    @file = file
    @validator = validator
    @reader = reader
    @collector = collector
    @grouping = grouping
    @counter = counter
    @income = income
    @printer = printer
  end

  def perform
    valid_file = validator.new(file).file_exists
    read_file = reader.new(valid_file).file_read
    collected_data = collector.new(read_file).collect_data
    group = grouping.new(collected_data).group_data
    counted_hash = counter.new(group).count_values
    total = income.new(counted_hash).total_income
    printer.new(total).print_values
  end
end
