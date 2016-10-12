require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1,player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    @player_1 = @game.player_1
    @player_2 = @game.player_2
    erb :play
  end

  post '/attack' do
    $game.attack($game.enemy_player)
    redirect '/play'
  end

  post '/switch' do
    $game.switch_turn
    redirect '/play'
  end




  # start the server if ruby file executed directly
  run! if app_file == $0
end
