require './user.rb'
require './account.rb'
require './bank.rb'
#require './transaction.rb'


$bank1 = Bank.new

puts "\nWelcome to the BryKath Bank! How can we help you today?\n
_______________________________________________________________________\n
Please make a selection:\n
1 = Create Account\n2 = Make a Deposit\n3 = Make a Withdrawal\n4 = List Transactions\n5 = Exit"

selection = gets.chomp
  case selection
    when '1'
      puts "Enter your first name"
      firstname = gets.chomp
      puts "Enter your second name"
      lastname = gets.chomp
      User.create_user(firstname, lastname)
      customer_ref = "#{User.lastname[0..3].upcase}"+"#{User.firstname[0..1].upcase}"
      Account.create_account(customer_ref)
      User.display_c_ref
      set_password
    end

__END__
    when '2'
      puts "Please enter your account number"
      acc_no = gets.chomp.to_i
       if acc_no ||=
        else puts "This is not a valid account number... Please try again: "
        end
    when '3'

    when '4'
      transactions
    when '5'
    else
      puts "That is not a valid selection."
  end











acct2 = Account.new('LIVIHA')
bank1.accounts << acct2
