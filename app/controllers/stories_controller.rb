class StoriesController < ApplicationController

    get '/stories' do 
        @stories = Story.all # shows the index of stories
        erb :'stories/index'
    end

    get '/stories/new' do
        @story = Story.new
        erb :'stories/new'
    end

    post '/stories' do
        @story=Story.create(params)
        redirect to "/stories/#{@story.id}"
    end

    get '/stories/:id' do 
        @stories = Story.find_by_id(params[:id])
        erb :'stories/show'
    end

    get '/stories/:id/edit' do
        @stories = Story.find_by_id(params[:id])
        erb :'stories/edit'
    end

    patch '/stories/:id' do
        @stories = Story.find_by_id(params[:id])
        @story.update(params[:story])
        redirect to "/stories/#{@story.id}"
    end

    delete "/story/:id" do
        Story.destroy(params[:id])
        redirect to "/stories"
    end  
end