require './user.rb'
require './account.rb'

class Bank
  attr_accessor :accounts, :users

  def initialize
    @accounts = []
    @users = []
  end

  def self.find_account(acc_no)
    @accounts.find { |acc_no| acc_no }
  end

  def self.find_user(customer_ref)
    @users.find { |ref| customer_ref }
  end
end

bank1 = Bank.new
harry = User.new('Harry', 'Livings', @customer_ref)
bank.users << harry
acct1 = Account.new(12345)
acct1.user = harry
harry.accounts << acct1
bank.accounts << acct1
