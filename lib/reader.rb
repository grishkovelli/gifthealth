class Reader
  attr_reader :file

  def initialize(file)
    @file = file
  end

  def file_read
    File.readlines(file)
  end
end
