require './Person_class.rb'
require './Math_question.rb'

class GameState

attr_reader :turn

  def initialize
    @players = []
    @turn = true
  end 


end
