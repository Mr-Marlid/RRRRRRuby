require_relative 'data_list'
require_relative 'data_table'

class Data_list_student_short < Data_list
  def get_names
    @data.first.attributes.keys[1..-1]
  end

  def get_data
    data = @data.map.with_index(1) do |student, index|
      [index] + student.attributes.values[1..-1]
    end
    Data_table.new(data)
  end
end

