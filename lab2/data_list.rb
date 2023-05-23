require_relative 'data_table'
class DataList
  private_class_method :new
  attr_writer :obj_list
  def initialize(obj_list)
    self.obj_list=obj_list
    self.selected_items=[]
    @observers = []
  end

  #добавление наблюдателя
  def add_observer(observer)
    @observers.append(observer)
  end

  def notify
    @observers.each { |observer| observer.on_datalist_changed(get_data) }
  end
  #выделение элементов по номеру
  def select(*numbers)
    selected_items.append(*numbers)
  end

  #массив id выделенных элементов
  def get_select
    obj_list[selected_items].id
  end

  def get_names; end

  #получение таблицы
  # Паттерн Шаблон
  def get_data;end

  def replace_objects(obj_list)
    self.obj_list=obj_list.dup
    notify
  end

  protected
  attr_reader :obj_list
  attr_accessor :selected_items

  def get_fields(object)
    []
  end
end
