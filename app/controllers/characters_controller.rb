class CharactersController < ApplicationController

    get '/characters' do 
        redirect_if_player_not_logged_in
            @characters = current_player.characters.all # shows the index of characters
        erb :'characters/index'
    end

    get '/characters/new' do
        redirect_if_player_not_logged_in
        erb :'characters/new'
    end

    get '/characters/:id' do 
        redirect_if_player_not_logged_in
        @character = Character.find_by_id(params[:id])
        erb :'characters/show'
    end

    get '/characters/:id/edit' do
        redirect_if_player_not_logged_in
        @character = Character.find_by_id(params[:id])
        if @character.player_id == current_player.id
            erb :'characters/edit'
        else
            redirect to "/characters"
        end
    end

    post '/characters' do
        character = Character.new(params)
        character.player_id = current_player.id
        if character.player_id == current_player.id
            character.save
            redirect to "/characters/#{character.id}"
        else
            redirect to "/characters/new"
        end
    end

    #not saving to player

    patch '/characters/:id' do
        @character = Character.find_by_id(params[:id])
        params.delete("_method")
        if @character.update(params)
            redirect to "/characters/#{@character.id}"
        else
            redirect to "/characters/new"
        end
    end
    #edit is working

    delete "/characters/:id" do
        @character = Character.find_by_id(params[:id])
        if @character.player_id == current_player.id
            @character.destroy
        end
        redirect to "/characters"
    end  
    #Working, save function is not

end