require 'pry'
class BankAccount

  attr_reader :name
  attr_accessor :balance, :status

  def initialize(name)
    @name = name
    @balance = balance
    @balance = 1000
    @status = 'open'
  end

def deposit(money_in)
@balance = money_in + balance
end

def display_balance
  return "Your balance is $#{self.balance}."
end


  def valid?
    @balance > 0 && @status == 'open'
    end
#def valid?   
#if @balance > 0 && @status == 'open'
# true
#else 
#  false
#end
#end

def close_account
  @status = 'closed'
end

end
