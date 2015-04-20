class Transaction
  attr_accessor :date, :amount, :type, :acc_no

  def initialize(date, amount, type)
    @date = Time.now
    @amount = amount
    @type = type
    @acc_no = acc_no
  end

  def date_formatted
    @date.strftime(%d)
  end

  def amount_formatted
    sprintf("$%.2f",@amount)
  end

  def to_s
    "#{acc_no} #{type}: #{amount_formatted} #{date_formatted}"
  end

end

class Deposit < Transaction; end

class Withdrawal < Transaction; end
