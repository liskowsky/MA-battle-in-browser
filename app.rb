require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base
  #enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  get '/attack' do
    @game = $game
    if @game.turn == 1
      @game.attack(@game.player_2)
      @game.turn = 2
      erb(:attack_p2)
    else
      @game.attack(@game.player_1)
      @game.turn = 1
      erb(:attack_p1)
    end
  end

  run! if app_file == $0

end
