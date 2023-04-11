#require 'json'
class Student
  public_class_method :new
  attr_reader :first_name, :second_name, :last_name, :phone, :telegram, :email, :git, :id
  
  
  
  
  def initialize(last_name: nil, first_name: nil, second_name: nil, id: nil, phone:nil, telegram: nil, email: nil, git:nil)
    raise ArgumentError, "Required fields: first_name, second_name and last_name!" if first_name.nil? || second_name.nil?|| last_name.nil?
    self.last_name=last_name
    self.first_name=first_name
    self.second_name=second_name
    self.id = id
    set_contacts(phone, telegram, email)
    self.git = git
  end
  
  #конструктор для аргументов в строке
  #def self.from_json_str(str)
  #  data=JSON.parse(str).transform_keys(&:to_sym)
  #  Student.new(**data)
  #end

  def first_name=(first_name)
    raise ArgumentError, 'Invalid first_name!' unless first_name.nil? || Student.validate_name?(first_name)
    @first_name=first_name
  end

  def second_name=(second_name)
    raise ArgumentError, 'Invalid second_name!' unless second_name.nil? || Student.validate_name?(second_name)
    @second_name=second_name
  end

  def last_name=(last_name)
    raise ArgumentError, 'Invalid last_name!' unless last_name.nil? || Student.validate_name?(last_name)
    @last_name=last_name
  end
  
  def telegram=(telegram)
    raise ArgumentError, 'Invalid telegram!' unless telegram.nil? || Student.validate_account?(telegram)
    @telegram=telegram
  end

  def git=(git)
    raise ArgumentError, 'Invalid git!' unless git.nil? || Student.validate_account?(git)
    @git=git
  end

  def email=(email)
    raise ArgumentError, 'Invalid email!' unless email.nil? || Student.validate_email?(email)
    @email=email
  end
  
  def phone=(phone)
    raise ArgumentError, 'Invalid phone number!' unless phone.nil? || Student.validate_phone?(phone)
    @phone = phone
  end
  
  def id=(id)
    raise ArgumentError, 'Invalid phone number!' unless id.nil? || Student.validate_phone?(id)
    @id = id
  end
  #корректность написания имени(возможны двойные имена)
  def self.validate_name?(name)
    name.match(/^[А-Я][а-я]+(-[А-Я][а-я]+)*$/)
  end
  
  #валидация для почты
  def self.validate_email?(email)
    email.match(/^\w+[-\w.]+@([A-Za-z]+\.)+[A-z]{2,4}$/)
  end
  
  #проверка на номер
  def self.validate_phone?(phone)
    phone.match(/^(8|\+7)[\- ]?\(?\d{3}\)?[\- ]?\d{3}([\- ]?\d{2}){2}$/)
  end
  
  def self.validate_id?(id)
    id.match(/^d{8}$/)
  end
  
  def self.validate_telegram?(telegram)
    telegram.match(/^@\w+$/)
  end
  #?
  def self.validate_git?(git)
    git.match(/^https:\/\/github\.com\/\w+$/)
  end
  
  
  
  #имя с инициалами
  def short_name
    "#{last_name} #{first_name[0]}. #{second_name[0]}."
  end
  
  def get_info
    "#{short_name}, #{find_git}, #{find_contact}"
  end
  
  def to_s
    res = "#{last_name} #{first_name} #{second_name}"
    res += " id=#{id}" unless id.nil?
    res += " phone=#{phone}" unless phone.nil?
    res += " #{git}" unless git.nil?
    res += " telegram=#{telegram}" unless telegram.nil?
    res += " email=#{email}" unless email.nil?
    res
  end

  def to_hash
    info_hash = {}
    %i[last_name first_name second_name id phone telegram email git].each do |field|
      info_hash[field] = send(field) unless send(field).nil?
    end
    info_hash
  end
  
  #Напишите метод validate, который проводит две валидации
  #наличие гита и наличие любого контакта для связи, по
  #возможности разделить методы.
  def git?
    !git.nil?
  end

  def exist_contact?
    !(telegram.nil? && email.nil? && phone.nil?)
  end

  def validate?
    git? && exist_contact?
  end
  
  
  #Напишите метод set_contacts, который устанавливает значения поля или полей для введенных контактов.
  def set_contacts(email:nil, phone:nil, telegram:nil)
    self.email = email
    self.phone = phone
    self.telegram = telegram
  end

  #def to_json_str
  #  JSON.generate(to_hash)
  #end

end
