class Question
  attr_reader :number1, :number2, :answer

  def initialize
    @number1 = rand(1..20)
    @number2 = rand(1..20)
  end

  def ask_question
    "What does #{number1} plus #{number2} equal?"
  end

  def get_answer
    number1 + number2
  end
end 


#testing
# q1 = Question.new
# puts q1
# puts q1.ask_question
# puts q1.get_answer