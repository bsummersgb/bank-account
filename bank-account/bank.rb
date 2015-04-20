require './user.rb'
require './account.rb'

class Bank
  attr_accessor :accounts, :users

  def initialize
    @accounts = []
    @users = []
  end

  def to_s
    "Number of accounts: #{@accounts.size}\nNumber of users: #{@users.size}"
  end

=begin
  def self.find_account(acc_no)
    @accounts.find { |acc_no| == acc_no }
  end

  def self.find_user_by_ref(customer_ref)
    @users.find { |ref| customer_ref }
  end

=end
end
