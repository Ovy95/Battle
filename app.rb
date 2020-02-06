require "sinatra/base"
require "./lib/player"
require "./lib/game"

class Battle < Sinatra::Base
  enable :sessions
  get "/" do 
    erb :index
  end

  post "/names" do
    $game = Game.new(Player.new(params[:player_1_name]),Player.new(params[:player_2_name]))
    redirect '/play'
  end

  get '/play' do 
    @player_1_name = $game.player1.name
    @player_2_name = $game.player2.name
    erb :play
  end 

  get '/attack' do
    
    @player_1_name = $game.player1.name
    @player_2_name = $game.player2.name
    $game.attack($game.player2)
    @player_2_hp = $game.player2.hp
    erb :attack
  end

  run! if app_file == $0
  
end