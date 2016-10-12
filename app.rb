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
    Game.create(player_1,player_2)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    @player_1 = @game.player_1
    @player_2 = @game.player_2
    erb :play
  end

  post '/attack' do
    Game.instance.attack(Game.instance.enemy_player)
    redirect '/play'
  end

  post '/switch' do
    Game.instance.switch_turn
    Game.instance.message = ""
    redirect '/play'
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
