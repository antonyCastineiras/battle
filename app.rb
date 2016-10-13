require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

 get '/' do
   erb :index
 end

 post '/names' do
   player_1 = Player.new(params[:player_1_name])
   player_2 = Player.new(params[:player_2_name])
   Game.create(player_1, player_2)
   redirect '/play'
 end

 get '/play' do
   @game = Game.instance
   erb(:play)
 end

 get '/attack' do
   @game = Game.instance
   @game.attack
    if @game.enemy.dead?
      redirect '/game_over'
    else
      erb(:attack)
    end
 end

 get '/poison' do
   @game = Game.instance
   @game.poison
   if @game.enemy.dead?
     redirect '/game_over'
   else
     erb(:attack)
   end
 end

 get '/switch_turn' do
  @game = Game.instance
  @game.switch_turn
  redirect '/play'
 end

 get '/skip_turn' do
  @game = Game.instance
  skip_turn = @game.skip_turn
  if skip_turn.even?
    redirect '/switch_turn'
  else
    redirect '/attack'
  end
 end

 get '/game_over' do
   "Game over!"
 end


 # start the server if ruby file executed directly
 run! if app_file == $0
end
