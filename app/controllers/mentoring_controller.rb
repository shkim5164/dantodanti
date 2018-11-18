class MentoringController < ApplicationController
    before_action :authenticate_user!
    def new
    end
    
    def create
        @suup=Suup.new
        @suup.limitman=params[:limitman]
        @suup.sttime=params[:sttime]
        @suup.endtime=params[:endtime]
        @suup.place=params[:place]
        @suup.phone=params[:phone]
        @suup.title=params[:title]
        @suup.content=params[:content]
        @suup.save
        redirect_to "/mentoring/show/#{@suup.id}"
        
    end
    
    def show
        @suup=Suup.find(params[:id])
        @mentor= Mentor.find(@suup.id)
        
    end
    
    def edit
        @suup=Suup.find params[:id]
    end
    
    def update
        @suup=Suup.find params[:id]
        @suup.limitman=params[:limitman]
        @suup.sttime=params[:sttime]
        @suup.endtime=params[:endtime]
        @suup.place=params[:place]
        @suup.phone=params[:phone]
        @suup.title=params[:title]
        @suup.content=params[:content]
        redirect_to "/mentoring/show/#{suup.id}"
    end
    
    def delete
        @suup=Suup.find params[:id]
        @suup.destroy
        redirect_to "/menu/mentoring"
    end
    
    #검색기능
    def search
        @word=params[:title]
        @search_s=Suup.search_for(params[:title])
    end

    def newshow
        @suup = Suup.find(params[:id])
    end
end
