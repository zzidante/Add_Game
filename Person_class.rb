class Player
  attr_accessor :name
  attr_accessor :answer  
  attr_reader :lives

  def initialize(name)
    @name = name
    @answer = ""
    @lives = 3
  end

  def lose_life
    @lives -= 1
  end

  def answer_question(answer)
    @answer = $stdin.gets.chomp
  end

end
