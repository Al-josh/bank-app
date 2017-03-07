class Atm
  def initialize(cash_quantity)
    @cash_quantity = cash_quantity
  end
  attr_accessor :cash_quantity

  def dispense(amount)
    @cash_quantity = cash_quantity - amount
  end

  def receive(amount)
    @cash_quantity = cash_quantity + amount


end

class Person
  def initialize(account_no, atm_pin, balance)
    @account_no = account_no
    @atm_pin = atm_pin
    @balance = balance
  end
  attr_accessor :account_no, :atm_pin, :balance

  def withdraw(atm)
    puts "Please input your account number:"
    bank_no = gets.chomp
    puts "Please input your pin"
    personal_pin = gets.chomp
      if bank_no == account_no && personal_pin == atm_pin
        puts "Please input amount:"
        amount = gets.chomp.to_i
        if @balance >= amount && amount <= atm.cash_quantity
          @balance = @balance - amount
          puts "Your balance is #{@balance}"
        else
          puts "Not enough money"
        end
      else
        puts "Please try again"
      end
  end

  def deposit(atm)
    puts "Please input your account number:"
    bank_no = gets.chomp
    puts "Please input your pin"
    personal_pin = gets.chomp
      if bank_no == account_no && personal_pin == atm_pin
        puts "Please input amount:"
        amount = gets.chomp.to_i
        @balance = @balance + amount
        puts "Your balance is #{@balance}"
      else
        puts "Please try again"
      end
  end
end

aljosa = Person.new("1234", "111", 1000000)
broadway = Atm.new(1000)

puts "What would you like to do?
Press 1 for withdrawal
Press 2 for deposit"
choice = gets.chomp.to_i

if choice == 1
  aljosa.withdraw(broadway)
elsif choice == 2
  aljosa.deposit(broadway)
else
  puts "Please try again"
end

end
