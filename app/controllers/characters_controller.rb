class CharactersController < ApplicationController

    get '/characters' do 
        redirect_if_player_not_logged_in
            @characters = current_player.characters # shows the index of characters
        erb :'characters/index'
    end

    get '/characters/new' do
        redirect_if_player_not_logged_in
        @player = current_player
        erb :'characters/new'
    end

    get '/characters/:id' do 
        redirect_if_player_not_logged_in
        @characters = Character.find_by_id(params[:id])
        erb :'characters/show'
    end

    post '/characters/new' do
        character = Character.new(params)
        if character.save
            redirect to "/characters/#{@character.id}"
        else
            redirect to "characters/new"
        end
    end

    get '/characters/:id/edit' do
        redirect_if_player_not_logged_in
        @characters = Character.find_by_id(params[:id])
        if @character.user.id == current_player.id
            erb :'characters/edit'
        else
            redirect to "/characters"
        end
    end

    patch '/characters/:id' do
        @characters = Character.find_by_id(params[:id])
        params.delete("_method")
        if @character.update(params)
            redirect to "/characters/#{@character.id}"
        else
            redirect to "/characters/new"
        end
    end
    #35:17 Live Lecture User authen

    delete "/character/:id" do
        @character = Character.find_by_id(params[:id])
        if @characer.user.id == current_user.id
            @character.destroy
        end
        redirect to "/characters"
    end  

end