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
1 = Create Account\n2 = Make a Deposit\n3 = Make a Withdrawal\n4 = List Transactions\n5 = Exit"




loop do

users = [
  User.new(Hugh, Greenwald)
  User.new(Wendy, Smith)
  User.new(Harry, Evings)
  User.new(Lucy, Sherbert)
  ]

selection = gets.chomp
  case selection
    when '1'
      puts "Enter your first name"
      firstname = gets.chomp
      puts "Enter your second name"
      secondname = gets.chomp
      users << (user1 = User.new(firstname, secondname))

      customer_ref
      set_password

    when '2'
      puts "Please enter your account number"
      acc_no = gets.chomp.to_i
       if acc_no ||=
        else puts "This is not a valid account number... Please try again: "

    when '3'

    when '4'
      transactions
    when '5'
    else
      puts "That is not a valid selection."
  end

end
