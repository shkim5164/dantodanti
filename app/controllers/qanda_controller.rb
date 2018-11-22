class QandaController < ApplicationController
    before_action :user_check, only: [:edit, :update, :destroy]
    def index
        @all = Question.all
    end
    
    def new
        
    end
    
    def create
        newq = Question.new
        newq.title = params[:title]
        newq.content = params[:content]
        newq.major = params[:major]
        newq.subject = params[:subject]
        newq.user_id = current_user.id
        newq.save
        
        redirect_to "/qanda/show/#{newq.id}"
    end
    
    def show
        @q = Question.find(params[:id])
        @ans = Qanswer.where(question_id: params[:id])
    end
    
    def edit
        @q = Question.find(params[:id])
    end
    
    def update
        @q = Question.find(params[:id])
        @q.title = params[:title]
        @q.content = params[:content]
        @q.major = params[:major]
        @q.subject = params[:subject]
        @q.save
        redirect_to "/qanda/show/#{params[:id]}"
    end
    
    def destroy
        @q = Question.find(params[:id])
        @q.destroy
        
        redirect_to '/qanda/index'
    end
    
    def a_create
        newa = Qanswer.new
        newa.content = params[:content]
        newa.user_id = current_user.id
        newa.question_id = params[:q_id]
        newa.save
        redirect_to "/qanda/show/#{params[:q_id]}"
    end
    
    def a_destroy
        @a = Qanswer.find(params[:id])
        @a.destroy
        
        redirect_to "/qanda/show/#{@a.question_id}"
    end
end
