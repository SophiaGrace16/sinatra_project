class DMsController < ApplicationController

    get "/dms/login" do
        erb :"dms/login"
    end

    get "/dms/signup" do
        erb :"dms/signup"
    end
end

#signup, login, logout