require 'json'
class Student
  public_class_method :new
  attr_reader :first_name, :second_name, :last_name
  #открываем сеттеры и геттеры из базового класса
  public :phone, :telegram, :email, 'id=', 'phone=', 'telegram=', 'email=', 'git=', :set_contacts
  def initialize(last_name: nil, first_name: nil, second_name: nil, id: nil, phone:nil, telegram: nil, email: nil, git:nil)
    raise ArgumentError, "Required fields: first_name, second_name and last_name!" if first_name.nil? || second_name.nil?|| last_name.nil?
    self.last_name=last_name
    self.first_name=first_name
    self.second_name=second_name
    super(id:id, phone:phone, telegram:telegram, email:email, git:git)
  end
end
