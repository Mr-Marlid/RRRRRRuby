class Data_list
  def initialize(data)
    @data = data.freeze
  end

  def select(number)
    @data[number]
  end

  def get_selected
    @data.map(&:id)
  end

  private

  attr_reader :data
  attr_writer :data
end

