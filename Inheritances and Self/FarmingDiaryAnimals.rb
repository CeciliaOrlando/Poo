#animal.rb
class Animal
  def initialize
    @energy = 0
  end

  def feed!
    @energy += 1
  end
end

#chicken.rb
require_relative "animal"

class Chicken < Animal
  attr_reader :eggs

  def initialize(gender)
    super()
    @gender = gender
    @eggs = 0
  end

  def feed!
    super
    @eggs += 2 if @gender == "female"
  end

  def talk
    case @gender
    when "male" then "cock-a-doodle-doo"
    when "female" then "cluck cluck"
    end
  end
end


#cow.rb
require_relative "animal"

class Cow < Animal
  attr_reader :milk

  def initialize
    super
    @milk = 0
  end

  def feed!
    super
    @milk += 2
  end

  def talk
    "moo"
  end
end


....
