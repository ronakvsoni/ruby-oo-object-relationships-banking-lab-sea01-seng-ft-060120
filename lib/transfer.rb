require 'pry'
class Transfer
  # your code here
attr_accessor :sender, :receiver,:status,:amount
def  initialize(sender, receiver, amount)
  @sender = sender
  @receiver = receiver

  @status = 'pending'
  @amount = amount
end

def valid?
  sender.valid? && receiver.valid?
end

def execute_transaction
  if self.status != 'complete' && self.valid?
    if self.sender.balance > self.amount
      self.sender.balance -= self.amount 
      self.receiver.balance += self.amount
      self.status = 'complete'
      return self.status

    else  self.status = 'rejected'
      "Transaction rejected. Please check your account balance."
    end
  end
  self.status = 'rejected'
  "Transaction rejected. Please check your account balance."
end 

def reverse_transfer
  if self.status != 'pending'
    self.sender.balance += self.amount 
    self.receiver.balance -= self.amount 
    self.status = 'reversed'
  end
end

end
