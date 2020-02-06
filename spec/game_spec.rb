describe Game do 

it "Attacks with 10 Hps points" do 
  player = Player.new("james")
  test = Game.new(player, player)
  expect(test.attack(player)).to eq(50)
end

it "checks the players turns on game startup "  do 
  player = Player.new("james")
  player2 = Player.new("larry")
  test = Game.new(player, player2)
  expect(test.current_player).to eq(player) 
end

it "checks for who turn it is after an attack" do 
  player = Player.new("james")
  player2 = Player.new("larry")
  test = Game.new(player, player2)
  test.turn_end
  expect(test.current_player).to eq (player2)
end
  

end

