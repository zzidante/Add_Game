require './Person_class.rb'

class MathQuestion

  attr_reader :question, :numberOne, :numberTwo

  def initialize
    @numberOne = rand[1..20]
    @numberTwo = rand[1..20]
  end 

  def get_question
    puts "What is the sum of #{@numberOne} and #{@numberTwo}?"
  end

  def get_answer
    @numberOne + @numberTwo
  end
  
end