class DMsController < ApplicationController

    get "/dms/login" do
        erb :'dms/login'
    end

    post '/dms/login' do
        @dm = DM.find_by(username: params[:username])
        if @dm && @dm.authenticate(params[:password])
            session[:dm_id] = @dm.id
            redirect_if_dm_logged_in
        else
            redirect_if_dm_not_logged_in
        end
    end

    get "/dms/signup" do
        erb :"dms/signup"
    end

    post "/dms" do
        @dm = DM.new(params)
        if @dm && @dm.save
            session[:dm_id] = @dm.id
            redirect "/stories"
        else
        erb :"dms/signup"
        end
    end

    get "/logout" do
        session.clear
        redirect to "/"
    end


end

#signup, login, logout