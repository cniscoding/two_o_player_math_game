class Game
  attr_accessor :p1, :p2
  
  def initialize(p1,p2)
    @p1 = Player.new(p1)
    @p2 = Player.new(p2)
  end

  #need to refactor and dry the code
  def start
    while p1.lives > 0 && p2.lives > 0
      #P1 questions
      question = Question.new
      puts "#{p1.name}: #{question.ask_question}"
      print "> "
      answer = $stdin.gets.chomp

      if answer.to_i == question.get_answer
        puts "#{p1.name}: Yes! You are correct."
      else
        p1.lose_life
        puts "#{p1.name}: Serious? No!"
      end

      if p1.status_life == 0
        puts "#{p1.name} wins with score #{p1.status_life}"
        puts "----- GAME OVER -----"
        break
      else
        puts "p1: #{p1.status_life}/3 vs p2: #{p2.status_life}/3"
        puts "----- NEW TURN -----"
      end

      #P2 questions
      question = Question.new
      puts "#{p2.name}: #{question.ask_question}"
      print "> "
      answer = $stdin.gets.chomp

      if answer.to_i == question.get_answer
        puts "#{p2.name}: Yes! You are correct."
        
      else
        p2.lose_life
        puts "#{p2.name}: Serious? No!"
      end

      if p2.status_life == 0
        puts "#{p2.name} wins with score #{p2.status_life}"
        puts "----- GAME OVER -----"
        break
      else
        puts "p1: #{p1.status_life}/3 vs p2: #{p2.status_life}/3"
        puts "----- NEW TURN -----"
      end

    end
    #while loop ends and game over
    puts "Good Bye!"
  end
end

