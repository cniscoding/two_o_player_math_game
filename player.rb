class Player
  attr_accessor :name, :lives, :current_player

  def initialize(name)
    @name = name
    @lives = 3
    @current_player = false
  end

  def lose_life
    self.lives -= 1
  end 

  def status_life
    self.lives
  end
end

#test
# player1 = Player.new
# puts player1.status_life

# player2 = Player.new
# puts player2.status_life
# player2.lose_life
# puts player2.status_life
# player2.lose_life
# puts player2.status_life

# p3 = Player.new('p3')
# puts p3.name
# puts p3.status_life