require './Person_class.rb'
require './Math_class.rb'
require './GamePrompts_class.rb'

class GameState

  def initialize(playerOne, playerTwo)
    @playerOne = Player.new(playerOne)
    @playerTwo = Player.new(playerTwo)
    @user_prompt = GamePrompts.new(@playerOne, @playerTwo)
    @turn = true
  end

  def switch_turn
    @turn = !@turn 
  end

  def valid_game?
    @playerOne.is_alive? && @playerTwo.is_alive?
  end
  
  def play_game
    @user_prompt.welcome_players
    while self.valid_game?
      
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

      @user_prompt.check_lives

      self.switch_turn
      
      if self.valid_game?
        @user_prompt.new_turn
      end
      
    end

    @playerOne.is_alive? ? @user_prompt.player_one_winner : @user_prompt.player_two_winner

    @user_prompt.game_over
  end
end

# Name Users
puts "What is Player One's name?"
playerOneName = gets.chomp!

puts "What is Player Two's name?"
playerTwoName = gets.chomp!

game = GameState.new(playerOneName, playerTwoName)

# starts game
game.play_game 


