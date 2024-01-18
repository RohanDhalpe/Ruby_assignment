# In this example, Encapsulation is referred as the wrapping of data members(balance) and members functions(deposit, withdraw ) in a single entity called BankAccount
class BankAccount
  attr_reader :balance

  def initialize(initial_balance)
    @balance = initial_balance
  end

  def deposit(amount)
    @balance += amount
    puts "Deposited #{amount}. New balance: #{@balance}"
  end

  def withdraw(amount)
    if @balance >= amount
      @balance -= amount
      puts "Withdrew #{amount}. New balance: #{@balance}"
    else
      puts "Insufficient funds."
    end
  end
end

account = BankAccount.new(500)
account.deposit(1000)
account.withdraw(100)
