class DMsController < ApplicationController

    get "/dms/login" do
        erb :"dms/login"
    end

    get "/dms/signup" do
        @dm=DM.new
        erb :"dms/signup"
    end

    get "/dms" do
        @dm=DM.create(params)
        redirect to "/dms/stories"
    end



end

#signup, login, logout