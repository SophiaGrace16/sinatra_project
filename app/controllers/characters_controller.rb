class SecondaryController < ApplicationController
    get '/objects' do 
        @objects = Object.all
    end    

end