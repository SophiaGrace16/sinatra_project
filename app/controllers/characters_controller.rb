class CharactersController < ApplicationController
    
    
    get '/characters' do 
        @characters = Character.all # shows the index of characters
        erb :index
    end

    get '/characters/new' do
        @character = Character.new
        erb :new
    end

    post '/characters' do
        @character=Character.create(params)
        redirect to "/characters/#{@character.id}"

    get '/characters/:id' do 
        @characters = Character.find_by_id(params[:id])
        erb :show
    end

    get '/characters/:id/edit' do
        @characters = Character.find_by_id(params[:id])
        erb :edit
    end

    patch '/characters/:id' do
        @characters = Character.find_by_id(params[:id])
        @character.update(params[:character])
        redirect to "/characters/#{@character.id}"
    end

    delete "/character/:id" do
        Character.destroy(params[:id])
        redirect to "/characters"
    end  

end