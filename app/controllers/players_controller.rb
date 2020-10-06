class PlayersController < ApplicationController

    #shows the login page
    get "/login" do
        erb :"players/login"
    end
end