class Validator
  attr_reader :file_path

  def initialize(file_path)
    @file_path = file_path
  end

  def file_exists
    validation(file_path)
  end

  private

  def validation(file)
    if File.exist?(file)
      file
    else
      raise StandardError
    end
  end
end
