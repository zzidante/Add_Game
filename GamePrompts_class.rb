require './Person_class.rb'

class GamePrompts
  
  def initialize(playerOne, playerTwo)
    @playerOne = playerOne || 'Player One'
    @playerTwo = playerTwo || 'Player Two'
  end

  def welcome_players
    puts "Welcome #{@playerOne.name} and #{@playerTwo.name}. \n#{@playerOne.name} goes first."    
  end

  def check_lives
    puts "#{@playerOne.name}: #{@playerOne.lives}/3 vs #{@playerTwo.name}: #{@playerTwo.lives}/3"
  end

  def new_turn
    puts "----- NEW TURN ----"
  end

  def player_one_winner
    puts "Congrats #{@playerOne.name} you win with a score of #{@playerOne.lives}/3!"
  end

  def player_two_winner
    puts "Congrats #{@playerTwo.name} you win with a score of #{@playerTwo.lives}/3!"
  end
  
  def game_over
    puts "----- GAME OVER ----\nGoodbye!"
  end

  # def ask_name
  #   @playerOne == 'Player One' ?  what_player = @playerOne : what_player = @playerTwo
  #   puts "What is #{what_player} name?"
  # end

end