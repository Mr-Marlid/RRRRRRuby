class Data_list
  def initialize(data)
    @data = data.freeze
  end

  private

  attr_reader :data
  attr_writer :data
end
