require './Person_class.rb'
require './Math_class.rb'

class GameState

  def initialize(playerOne, playerTwo)
    @playerOne = Player.new(playerOne)
    @playerTwo = Player.new(playerTwo)
    @turn = true
  end

  def play_game
    puts "Welcome #{@playerOne.name} and #{@playerTwo.name}. \n#{@playerOne.name} goes first."

    while @playerOne.is_alive? && @playerTwo.is_alive?
      question = MathQuestion.new
      puts question.get_question
      player_answer = gets.chomp.to_i      

      if @turn == true 
        if player_answer != question.get_answer
          @playerOne.lose_life
        end
      end

      if @turn == false 
        if player_answer != question.get_answer
          @playerTwo.lose_life
        end
      end 
    puts "Player One: #{@playerOne.lives}/3 || Player Two: #{@playerTwo.lives}/3"
    @turn = !@turn                      
    end
  end
end


puts "What is Player One's name?"
playerOneName = gets.chomp!

puts "What is Player Two's name?"
playerTwoName = gets.chomp!

game = GameState.new(playerOneName, playerTwoName)

game.play_game #starts game


