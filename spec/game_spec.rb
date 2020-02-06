describe Game do 

it "Attacks with 10 Hps points" do 
  player = Player.new("james")
  test = Game.new(player, player)
  expect(test.attack(player)).to eq(50)
end

end