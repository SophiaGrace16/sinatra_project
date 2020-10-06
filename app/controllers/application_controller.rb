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

  # helpers do
  #   def logged_in?
  #     session[:user_id]
  #   end

  #   def current_user
  #     @user ||= User.find_by(id: session[:user_id])
  #   end

  #   def redirect_if_not_logged_in
  #     if !logged_in?
  #       redirect "/login"
  #     end
  #   end

  #   def redirect_if_logged_in
  #     if logged_in?
  #       redirect "/characters" || "/stories"
  #     end
  #   end
  # end

end


#helper methods (current user, logged in, etc. - any authentication)
#application wide
