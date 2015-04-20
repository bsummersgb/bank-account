class User
  attr_accessor :firstname, :lastname, :customer_ref

  def initialize(firstname, lastname)
    @firstname = firstname
    @lastname = lastname
    @customer_ref = "#{@lastname[0..3].upcase}"+"#{@firstname[0..1].upcase}"
  end

  def check_password?(password_entered)
    password_entered == @password
  end

  def display_c_ref
    puts "Your customer reference is #{@customer_ref}"
  end

  def self.all

  end

end
