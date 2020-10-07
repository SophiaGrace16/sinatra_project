class CharactersController < ApplicationController

    get '/characters' do 
        @characters = current_player.characters # shows the index of characters
        erb :'characters/index'
    end

    get '/characters/new' do
        @character = Character.new
        erb :'characters/new'
    end

    post '/characters' do
        @character=Character.create(params)
        redirect to "/characters/#{@character.id}"
    end

    get '/characters/:id' do 
        @characters = Character.find_by_id(params[:id])
        erb :'characters/show'
    end

    get '/characters/:id/edit' do
        @characters = Character.find_by_id(params[:id])
        erb :'characters/edit'
    end

    patch '/characters/:id' do
        @characters = Character.find_by_id(params[:id])
        @character.update(params[:character])
        redirect to "/characters/#{@character.id}"
    end
    #35:17 Live Lecture User authen

    delete "/character/:id" do
        @character = Character.find_by_id(params[:id])
        @character.destroy(params[:id])
        redirect to "/characters"
    end  

end