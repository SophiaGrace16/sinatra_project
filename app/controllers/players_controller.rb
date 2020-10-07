class PlayersController < ApplicationController

    #shows the login page
    get "/players/login" do
        erb :"players/login"
    end

    post '/players/login' do
        @player = Player.find_by(username: params[:username])
        if @player && @player.authenticate(params[:password])
            session[:player_id] = @player.id
            redirect_if_player_logged_in
        else
            redirect_if_player_not_logged_in
        end
    end

    get "/players/signup" do
        erb :"players/signup"
    end

    post "/players" do
        @player = Player.new(params)
        if @player && @player.save
            session[:player_id] = @player.id
            redirect "/characters"
        else
        erb :"players/signup"
        end
        #how? because their homepage is really the characters index page
    end

    get "/logout" do
        session.clear
        redirect to "/login"
    end

end
