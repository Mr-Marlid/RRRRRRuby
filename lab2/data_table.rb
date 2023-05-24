class Data_table
  def initialize(data)
    @data = data
  end

  private

  attr_reader :data
  attr_writer :data
end
