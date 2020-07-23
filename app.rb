require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player1 = Player.new(params[:player_1_name])
    $player2 = Player.new(params[:player_2_name])
    redirect '/play'
  end

  get '/test' do
    'Testing infrastructure working!'
  end

  get '/play' do
    @player_1_name = $player1.name
    @player_2_name = $player2.name
    erb(:play)

  end

  get '/confirmation' do
    @player_1_name = $player1.name
    @player_2_name = $player2.name
    erb(:confirmation)
  end

  run! if app_file == $0
end
