class DMsController < ApplicationController

    get "/dms/login" do
        erb :"dms/login"
    end

    get "/dms/signup" do
        @dm=DM.new
        erb :"dms/signup"
    end

    post "/dms" do
        @dm=DM.create(params)
        redirect to "/dms/#{@dm.id}"
    end



end

#signup, login, logout