class PlayersController < ApplicationController

    #shows the login page
    get "/players/login" do
        erb :"players/login"
    end

    post '/login' do
        @player = Player.find_by(username: params[:username])
        if !!@player && player.password == params[:password] #can I use a ? here
            session[:player_id] = @player.id
            redirect to "/players/home"
        else
            erb :"players/login"
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

    get "/player/:id" do

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