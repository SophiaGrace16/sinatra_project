class StoriesController < ApplicationController

    get '/stories' do 
        @stories = Story.all # shows the index of stories
        erb :index
    end

    get '/stories/new' do
        @story = Story.new
        erb :new
    end

    post '/stories' do
        @story=Story.create(params)
        redirect to "/stories/#{@story.id}"

    get '/stories/:id' do 
        @stories = Story.find_by_id(params[:id])
        erb :show
    end

    get '/stories/:id/edit' do
        @stories = Story.find_by_id(params[:id])
        erb :edit
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