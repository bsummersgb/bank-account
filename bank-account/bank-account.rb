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



puts "\nWelcome to the BryKath Bank! How can we help you today?\n
_______________________________________________________________________\n
Please make a selection:\n
1 = Create Account\n2 = Make a Deposit\n3 = Make a Withdrawal\n4 = List Transactions\n"

users = []

selection = gets.chomp
  case selection
    when '1' then
      puts "Enter your first name"
      firstname = gets.chomp
      puts "Enter your second name"
      secondname = gets.chomp
      users << User.new(firstname, secondname)

      set_password


    when '2' then
      puts "How much?"


    when '3' then

    when '4' then
      transactions
    else
      puts "That is not a valid selection."
  end

### change
