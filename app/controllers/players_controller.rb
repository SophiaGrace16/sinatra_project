class PlayersController < ApplicationController

    #shows the login page
    get "/players/login" do
        erb :"players/login"
    end

    post '/players/login' do
        @player = Player.find_by(username: params[:username])
        if @player && @player.authenticate(params[:password]) #links to helper methods
            #utilize the Bcrypt authenticate method which takes in an argument of the password params. 
            #If a user exists and the password matches, the id of the user instance is stored in a session, 
            #and they are logged in. Otherwise, we are redirected back to the login form page
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
        redirect to "/"
    end

end
