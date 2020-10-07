class PlayersController < ApplicationController

    #shows the login page
    get "/players/login" do
        erb :"players/login"
    end

    post '/login' do
        @player = Player.find_by(username: params[:username])
        if !!@player && @player.authenticate(params[:password])
            session[:player_id] = @player.id
            redirect_if_player_logged_in
        else
            redirect_if_not_logged_in
        end
    end

    get '/home' do 
        @player = Player.find_by_id(session[:player_id])
        erb :home
    end

    get "/players/signup" do
        @player=Player.new
        erb :"players/signup"
    end

    post "/players" do
        @player=Player.create(params)
        redirect to "/player/#{@player.id}" #how? because their homepage is really the characters index page
    end

    get "/logout" do
        session.clear
        redirect "/login"
    end

end

# get '/users/signup' do
#     erb :"users/signup"
# end

# post '/users' do
#     #create user
#     @user = User.new(params)
#     # save
#     if @user && @user.save
#     # if it saves
#         session[:user_id] = @user.id
#         # set session ID
#         redirect "/posts"
#         # redirect the user
#     else
#     # if it doesn't save
#     binding.pry
#         erb :"users/signup"
#         #redirect back to signup
#     end
# end