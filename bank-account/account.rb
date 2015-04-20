class Account
  attr_accessor :customer_ref, :acc_no, :balance

  def initialize(customer_ref)
    @customer_ref = customer_ref
    @balance = nil
    @acc_no = $acc_no_base + (8733*$bank1.accounts.size)
  end

  def to_s
    "#{@customer_ref} - Account no. #{@acc_no}"
  end

  def self.create_account(customer_ref)
    $bank1.accounts << Account.new(customer_ref)
  end

  def self.set_password
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

   def display_acc_no
     puts "Your account number is #{@acc_no}"
   end

end
