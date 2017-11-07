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

end
