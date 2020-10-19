require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public' 
    set :views, 'app/views' #links our views folder
    enable :sessions #enables session hashes to be created when a user logs on
    set :sessions, true #sessions are enabled
    set :session_secret, ENV["SECRET"] #sets our secret
  end

 
  get "/" do
    erb :welcome #on start of server takes you to the welcome page
  end

  helpers do

    def player_logged_in?
      session[:player_id] #set in player controller
    end

    def dm_logged_in?
      session[:dm_id] #set in dm controller
    end

    def redirect_if_player_not_logged_in 
      #checks if they player is logged in and then if they arent it redirects them if they are not
      if !player_logged_in?
        redirect "/players/login"
      end
    end

    #I think I could refactor this to include the else, it would DRY the code

    def redirect_if_player_logged_in
      #checks if they player is logged in
      if player_logged_in?
        redirect "/characters"
      end
    end

    def redirect_if_dm_not_logged_in
      if !dm_logged_in?
        redirect "/dms/login"
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
    #memolization
    #To be precise, a ||= b means "if a is undefined or falsy ( false or nil ), 
    #set a to b and evaluate to (i.e. return) b , otherwise evaluate to a ". 
    #Others often try to illustrate this by saying that a ||= b is equivalent 
    #to a || a = b or a = a || b 
    #http://gavinmiller.io/2013/basics-of-ruby-memoization/

    
  
  end

end


#helper methods (current user, logged in, etc. - any authentication)
#application wide
