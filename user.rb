class User
  attr_reader :email
  attr_accessor :photo

  def initialize(first_name, last_name, email, password, photo)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @password = password
    @photo = photo
  end

  def full_name
    "#{@first_name} #{last_name}"
  end

  def self.plans
    ['basic', 'premium']
  end
end

user =User.new("", "", "", "", "")
User.plans

user.full_name
user.last_name








