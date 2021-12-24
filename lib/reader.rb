class Reader
  attr_reader :file_path

  def initialize(file_path)
    @file_path = file_path
  end

  def file_read
    read_data(file_path)
  end

  private

  def read_data(file)
    File.readlines(file)
  end
end
