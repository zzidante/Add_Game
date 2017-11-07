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

      if player_answer != question.get_answer  
        if @turn == true 
            @playerOne.lose_life
        end

        if @turn == false 
          @playerTwo.lose_life
        end 
      end

      puts "#{@playerOne.name}: #{@playerOne.lives}/3 vs #{@playerTwo.name}: #{@playerTwo.lives}/3"
      @turn = !@turn
      if @playerOne.is_alive? && @playerTwo.is_alive?
        puts "----- NEW TURN ----"
      end            
    end

    if @playerOne.is_alive?
      puts "Congrats #{@playerOne.name} you win with a score of #{@playerOne.lives}/3!"
    else
      puts "Congrats #{@playerTwo.name} you win with a score of #{@playerTwo.lives}/3!"
    end

    puts "----- GAME OVER ----\nGoodbye!"
  end
end


puts "What is Player One's name?"
playerOneName = gets.chomp!

puts "What is Player Two's name?"
playerTwoName = gets.chomp!

game = GameState.new(playerOneName, playerTwoName)

game.play_game #starts game


