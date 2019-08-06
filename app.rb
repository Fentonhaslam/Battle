require "sinatra/base"
#require "sinatra/base" - in walkthrough, was suggested for class.

class Battle < Sinatra::Base
  enable :sessions
  DEFAULT_HEALTH_POINTS = 100
  get "/" do
    erb :index
  end

  post "/names" do
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
    redirect "/play"
  end

  get "/play" do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    erb :play
  end

  get "/attack" do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    erb :attack
  end

  run! if app_file == $0
end
