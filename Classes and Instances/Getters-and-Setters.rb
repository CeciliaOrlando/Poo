class VendingMachine
  # TODO: add relevant getter/setter to this class to make the scenarios pass.
  attr_reader :user_balance_cents, :snack_price_cents
  attr_accessor :snack_count

  def initialize(snack_price_cents, snack_count)
    @user_balance_cents = 0
    @snack_count = snack_count
    @snack_price_cents = snack_price_cents
  end

  def insert_coin(input_cents)
    # TODO: what happens to `@snack_count, @user_balance_cents and @snack_price_cents when the user insert a coin?
    @user_balance_cents += input_cents
  end

  def buy_snack
    # TODO: what happens to `@snack_count, @user_balance_cents and @snack_price_cents when
    # the user pushes a button to buy a Snack?
    if @user_balance_cents >= @snack_price_cents && @snack_count.positive?
      @user_balance_cents -= @snack_price_cents
      @snack_count -= 1
    end
  end
end




require_relative "vending_machine"

def display(vending_machine)
  message = "---> Amount: #{vending_machine.user_balance_cents / 100.0}€\n"
  message += "- 1 Snack = #{vending_machine.snack_price_cents / 100.0}€\n"
  message += "- Stock: #{vending_machine.snack_count}"
  message
end

# We instantiate an **empty** vending machine selling 2.5 euros snacks.
vending_machine = VendingMachine.new(250, 0)
puts "Vending machine ready!"
puts display(vending_machine)

# A technician comes and refill the vending machine with 20 snacks.
puts "Technician filling machine with 20 snacks"
vending_machine.snack_count = vending_machine.snack_count + 20
puts display(vending_machine)


require_relative "vending_machine"

def display(vending_machine)
  message = "---> Amount: #{vending_machine.user_balance_cents / 100.0}€\n"
  message += "- 1 Snack = #{vending_machine.snack_price_cents / 100.0}€\n"
  message += "- Stock: #{vending_machine.snack_count}"
  message
end

# We instantiate a new vending machine selling 2.5 euros snacks. In the beginning
# this machine has a stock of 10 snacks.
vending_machine = VendingMachine.new(250, 10)
puts "Vending machine ready!"
puts display(vending_machine)

# A client comes and inserts some coins
puts "Inserting 2€"
vending_machine.insert_coin(200)
puts display(vending_machine)

3.times do
  puts "Inserting 0.2€"
  vending_machine.insert_coin(20)
  puts display(vending_machine)
end

# Then the client pushes the Buy snack button
puts "Pushing 'Buy Snack' button"
vending_machine.buy_snack
puts display(vending_machine)

# Then the client pushes the Buy snack button again (but forgot to insert some more coins!)
puts "Pushing 'Buy Snack' button"
vending_machine.buy_snack
puts display(vending_machine)
