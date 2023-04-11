require_relative 'Student'
class Student_short < Student
  public_class_method :new
  attr_reader :short_name
  attr_writer :short_name
  
  def initialize(id, str)
    data = JSON.parse(str).transform_keys(&:to_sym)
    raise ArgumentError, 'Fields required: short_name' if !data.key?(:short_name) || data[:short_name].nil?
    self.short_name = data[:short_name]
    super(id:id, git:data[:git], phone: data[:phone], email:data[:email], telegram:data[telegram])
  end
  
  def find_contact
    if exist_contact?
      return "phone: #{phone}" unless phone.nil?
      return "telegram: #{telegram}" unless telegram.nil?
      return "email: #{email}" unless email.nil?
    end
    "not avalible"
  end
  
  def find_git
    if git?
      "git=#{git}"
    else
      "git: not available"
    end
  end
  
  def to_s
    result = short_name
    result += " id=#{id} " unless id.nil?
    result += " #{find_contact}"
    result+= "  #{find_git}"
    result
  end

end
