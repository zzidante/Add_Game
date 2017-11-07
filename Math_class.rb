class MathQuestion

  attr_reader :numberOne, :numberTwo

  def initialize
    @numberOne = rand(1..20)
    @numberTwo = rand(1..20)
  end 

  def get_question
    puts "What is the sum of #{@numberOne} and #{@numberTwo}?"
  end

  def get_answer
    @numberOne + @numberTwo
  end

end

# questionOne = MathQuestion.new 

# puts questionOne.get_question
# puts questionOne.get_answer
