class CharactersController < ApplicationController

    get '/characters' do 
        redirect_if_player_not_logged_in
        #if there is no one logged in it kicks them back to the homepage
            @characters = current_player.characters.all # shows the index of characters
        erb :'characters/index' #route
    end

    get '/characters/new' do
        redirect_if_player_not_logged_in
        #if there is no one logged in it kicks them back to the homepage
        erb :'characters/new' #route
    end

    get '/characters/:id' do 
        redirect_if_player_not_logged_in
        #if there is no one logged in it kicks them back to the homepage
        @character = Character.find_by_id(params[:id])
        erb :'characters/show'
    end

    get '/characters/:id/edit' do
        redirect_if_player_not_logged_in
        #if there is no one logged in it kicks them back to the homepage
        @character = Character.find_by_id(params[:id])
        if @character.player_id == current_player.id
            erb :'characters/edit'
        else
            redirect to "/characters"
        end
    end

    post '/characters' do
        character = Character.new(params)
        character.player_id = current_player.id #sets the id of the new character to the current player
        if character.player_id == current_player.id 
            #checks to see if they match, if they don't then it kicks them to their new page
            character.save
            redirect to "/characters/#{character.id}"
        else
            redirect to "/characters/new"
        end
    end
    #can I refactor here? build? seems redundant

    patch '/characters/:id' do
        @character = Character.find_by_id(params[:id])
        params.delete("_method")
        if @character.player_id == current_player.id
            if @character.update(params)
                redirect to "/characters/#{@character.id}"
            else
                redirect to "/characters/new"
            end
        end
    end

    delete "/characters/:id" do
        @character = Character.find_by_id(params[:id])
        if @character.player_id == current_player.id
            @character.destroy 
            redirect to "/characters"
        else
            erb :"welcome"
        end
        
    end  

end