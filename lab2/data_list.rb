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

  def generate_data_table(rows, columns)
    data = rows.map.with_index(1) do |row, index|
      [index] + row.attributes.values[1..-1]
    end
    Data_table.new(data)
  end

  def get_attributes_names```
