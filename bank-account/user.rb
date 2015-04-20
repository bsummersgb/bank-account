class User
  attr_accessor :firstname, :lastname, :customer_ref

  def initialize(firstname, lastname)
    @firstname = firstname
    @lastname = lastname
  end

  def check_password? (password_entered)
    password_entered == @password
  end

  def generate_cr
    @customer_ref = "#{@lastname[0..3].upcase}"+"#{@firstname[0..1].upcase}"
    puts "Your customer reference is #{self.customer_ref}"
    #check that doesnt already exist
  end

  def self.all
    cust_refs = []
    cust_refs <<
  end

end
