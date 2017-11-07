class Player
  attr_accessor :name, :answer
  attr_reader :lives

  def initialize(name)
    @name = name
    @answer = ""
    @lives = 3
  end

  def lose_life
    @lives -= 1
  end

  def is_alive?
    @lives > 0
  end

  def answer_question(answer)
    @answer = answer
  end

end

# puts playerOne = Player.new("Bob")
# puts playerTwo = Player.new("Grace")

# puts playerOne.name
# puts playerTwo.name 

# puts playerOne.lose_life

# puts playerOne.lives 