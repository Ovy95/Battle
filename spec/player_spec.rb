require "player"
describe Player do 

  it "Returns its name " do 
    
    test = Player.new("john")
    expect(test.name).to eq("john")
  end

  it "returns its Hp " do
    test = Player.new("john")
    expect(test.hp).to eq(60)
  end

  it "Attacks with 10 Hps points" do 
    test = Player.new("john")
    expect(test.attacked).to eq(50)
  end

end
    
