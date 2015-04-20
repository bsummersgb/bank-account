class User
  attr_accessor :firstname, :lastname, :customer_ref

  def initialize(firstname, lastname)
    @firstname = firstname
    @lastname = lastname
  end

  def check_password?(password_entered)
    password_entered == @password
  end

  def customer_ref=
    @customer_ref = "#{@lastname[0..3].upcase}"+"#{@firstname[0..1].upcase}"
  end

#  def self.display_c_ref
#    puts "Your customer reference is #{@customer_ref}"
#  end

  def to_s
    "#{@customer_ref} (#{@firstname} #{lastname})"
  end

  def self.create_user(firstname, lastname)
    $bank1.users << User.new(firstname, lastname)
  end

end
