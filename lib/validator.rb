class Validator
  attr_reader :file_path

  def initialize(file_path)
    @file_path = file_path
  end

  def file_exists
    if File.exist?(file_path)
      file_path
    else
      raise StandardError
    end
  end
end
