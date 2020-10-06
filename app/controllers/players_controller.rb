class PlayersController < ApplicationController

    #shows the login page
    get "/players/login" do
        erb :"players/login"
    end

    get "/players/signup" do
        erb :"players/signup"
    end

    # post "/character"
end