class StoriesController < ApplicationController

    get '/stories' do 
        redirect_if_dm_not_logged_in
        @stories = current_dm.stories.all # shows the index of stories
        erb :'stories/index'
    end

    get '/stories/new' do
        redirect_if_dm_not_logged_in
        @dms=DM.all
        erb :'stories/new'
    end

    get '/stories/:id' do 
        redirect_if_dm_not_logged_in
        @story = Story.find_by_id(params[:id])
        erb :'stories/show'
    end

    get '/stories/:id/edit' do
        redirect_if_dm_not_logged_in
        # @dm = DM.all
        @story = Story.find_by_id(params[:id])
        if @story.dm_id == current_dm.id
            erb :'stories/edit'
        else
            redirect to "/stories"
        end
    end

    post '/stories' do
        story = Story.new(params)
        story.dm_id = current_dm.id
        if story.dm_id == current_dm.id
            story.save
            redirect to "/stories/#{story.id}"
        else
            redirect to "/stories/new"
        end
    end
    #story does not save to dm id

    patch '/stories/:id' do
        @story = Story.find_by_id(params[:id])
        params.delete("_method")
        if @story.update(params)
            redirect to "/stories/#{@story.id}"
        else
            redirect to "/stories/new"
        end
    end
    #edit works

    delete "/stories/:id" do
        @story = Story.find_by_id(params[:id])
        if @story.dm_id == current_dm.id
            @story.destroy
        end
        redirect to "/stories"
    end  
    #delete works
end