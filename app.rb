require "sinatra/base"
require "./lib/player"
#require "sinatra/base" - in walkthrough, was suggested for class.
$player_1
$player_2

class Battle < Sinatra::Base
  get "/" do
    erb :index
  end

  post "/names" do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect "/play"
  end

  get "/play" do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    @player_1_hit_points = $player_1.hit_points.to_s
    @player_2_hit_points = $player_2.hit_points.to_s
    erb :play
  end

  get "/attack" do
    @player_1 = $player_1
    @player_2 = $player_2
    Game.new.attack(@player_2)
    erb :attack
  end

  run! if app_file == $0
end
