require './user.rb'
require './account.rb'
require './bank.rb'
#require './transaction.rb'

$acc_no_base = 187463
$bank1 = Bank.new

puts "\nWelcome to the BryKath Bank! How can we help you today?"
loop do
puts "_________________________________________________________________\n
Please make a selection:\n
1 = Create Account\n2 = Make a Deposit\n3 = Make a Withdrawal\n4 = List Transactions\n5 = Exit"

selection = gets.chomp
  case selection
    when '1'
      puts "Enter your first name"
      firstname = gets.chomp
      puts "Enter your second name"
      lastname = gets.chomp
      new_user = User.new(firstname, lastname)
      User.all_users(new_user) #working
      Account.create_account(new_user) #working
      new_user.display_cust_ref #working
      new_account = Account.new(new_user.customer_ref)
      new_account.display_acc_no
      new_user.set_password
    when '2'
      puts "Please enter your account number"
      acc_no = gets.to_i
      if $bank1.accounts.exists?(acc_no)
        puts "Enter deposit amount"

        #####up to here

      else puts "This is not a valid account number... Please try again: "
      end
    when '3'
      puts "3"
    when '4'
      puts "4"
    when '5'
      puts "5"
    else
      puts "That is not a valid selection."
  end

end
