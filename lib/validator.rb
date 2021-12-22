class Validator
  attr_reader :file_path

  def initialize(file_path)
    @file_path = file_path
  end

  def file_exists
    file_exists = File.exist?(file_path)
    raise StandardError unless file_exists
  end
end
