class Account
  attr_accessor :customer_ref, :acc_no, :balance

  def initialize(customer_ref)
    @customer_ref = customer_ref
    @acc_no = nil
    @balance = 0
  end

  def to_s
    "#{@customer_ref} - Account no. #{@acc_no}"
  end

  def self.create_account(customer_ref)
    $bank1.accounts << Account.new(customer_ref)
  end

end
