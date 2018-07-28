class PublicController < ApplicationController
    
    def write
        @token=form_authenticity_token
    end
    
    def create
        @newrecord=Blacklist.new
        @newrecord.title=params[:title] 
        @newrecord.content=params[:content] 
        @newrecord.save
        redirect_to "/public/show/#{@newrecord.id}"
    end
    
    def index
        @allrecord = Blacklist.all
    end
    
    def show
        @show = params[:id]
        @findone = Blacklist.find(@show)
        @s_title = @findone.title
        @s_content = @findone.content
        @comments = Comment.where(blacklist_id: params[:id])
    end
        
    
end
