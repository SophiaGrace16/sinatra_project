class CharactersController < ApplicationController
    
    
    get '/characters' do 
        @characters = Character.all
    end    

end