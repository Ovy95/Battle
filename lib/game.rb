require "player"
class Game
attr_reader :player1, :player2, :turn

  def initialize(player1,player2)
    @player1 = player1
    @player2 = player2
    @turn = 1
  end

  def attack(player)
    player.attacked
  end

  def turn_end
    @turn += 1
  end
  

    

  
end
