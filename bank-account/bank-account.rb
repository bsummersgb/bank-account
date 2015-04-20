require './user.rb'

class BankAcccount
  attr_reader :balance
  attr_accessor :firstname, :lastname

  def initialize(firstname, lastname)
    @firstname = firstname
    @lastname = lastname
    @balance = 0
  end

  def withdraw(amount)
    @balance -= amount
  end

  def deposit(amount)
    @balance += amount
  end

  def to_s
    "#{name} Balance: $#{@balance}"
  end
end


def set_password
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
