class PlayersController < ApplicationController

    #shows the login page
    get "/players/login" do
        erb :"players/login"
    end

    get "/players/signup" do
        @player=Player.new
        erb :"players/signup"
    end

    post "/player" do
        @player=Player.create(params)
        redirect to "/player/characters" #how? because their homepage is really the characters index page
    end
end