require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :sessions, true
    set :session_secret, "supercalifragilisticexpialidocious"
  end

 
  get "/" do
    erb :welcome
  end

  helpers do

    def player_logged_in?
      session[:player_id]
    end

    def dm_logged_in?
      session[:dm_id]
    end

    def redirect_if_player_not_logged_in
      if !player_logged_in?
        redirect "/login"
      end
    end

    def redirect_if_player_logged_in
      if player_logged_in?
        redirect "/characters"
      end
    end

    def redirect_if_dm_not_logged_in
      if !dm_logged_in?
        redirect "/login"
      end
    end

    def redirect_if_dm_logged_in
      if dm_logged_in?
        redirect "/stories"
      end
    end

    def current_player
      @player ||= Player.find_by(id: session[:player_id])
    end

    def current_dm
      @dm ||= DM.find_by(id: session[:dm_id])
    end

    
  
  end

end


#helper methods (current user, logged in, etc. - any authentication)
#application wide
