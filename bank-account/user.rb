class User
  attr_accessor :firstname, :lastname, :customer_ref

  def initialize(firstname, lastname)
    @firstname = firstname
    @lastname = lastname
    @customer_ref =
    "#{@lastname[0..3].upcase}"+"#{@firstname[0..1].upcase}"
  end

  def set_password
     while (@password == nil)
       print "Please enter password:"
       password1 = gets.chomp
       print "Please re-enter password to set:"
       password2 = gets.chomp
       if password1 == password2
         then @password = password1
           puts "Password set."
       else
         puts "Incorrect match. Please enter again."
       end
     end
   end

  def check_password?(password_entered)
    password_entered == @password
  end

  def to_s
    "#{@firstname} #{@lastname} (#{@customer_ref})"
  end

  def display_cust_ref
    puts "#{@firstname[0].upcase}#{@firstname[1..40]} #{@lastname[0].upcase}#{@lastname[1..40]}, your customer reference is #{@customer_ref}."
  end

  def inspect
    to_s
  end

  def self.all_users(new_user)
    $bank1.users << new_user
  end

end
