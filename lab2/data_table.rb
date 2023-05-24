class Data_table
  def initialize(data)
    self.data = data
  end
  
  #9
  def data=(new_data)
       @data = new_data
  end
  
  def get_element(row, col)
    @data[row][col]
  end

  def get_columns_count
    @data[0].size
  end

  def get_rows_count
    @data.size
  end

  private

  attr_reader :data
  attr_writer :data
end
