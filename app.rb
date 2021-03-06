require 'sinatra/base'
require './lib/player.rb'


class Battle < Sinatra::Base
enable :sessions

get '/' do
  erb :index
end

post '/names' do
$player1 = Player.new(params[:player1_name])
$player2 = Player.new(params[:player2_name])
redirect('/play')
end

get '/play' do
  @player1_name = $player1.name
  @player2_name = $player2.name
  erb :play
end

get '/attack' do
  @player1_name = $player1.name
  @player2_name = $player2.name
  erb :attack
end
  run! if app_file == $0
end
