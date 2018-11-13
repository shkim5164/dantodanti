class MentorrqController < ApplicationController
  before_action :authenticate_user!
  before_action :set_post only: [:edit, :update, :show, :destory]

  
  #CREATE
  def new
  end
  
  def create
    @newpost = List.new
    @newpost.user_id = current_user.id #name(앞) 항목에는 파라미터로 받아온 name 을 저장하고
    @newpost.content = params[:content]  #content 항목에는 파라미터로 받아온 content를 저장
    
    @newpost.save # 안해주면 날라감
    redirect_to "/mentorrq/show/#{@newpost.id}" # 저장하면 show로 바로 넘어감
  end
  
  #READ
  def index
    @posts = List.where(user_id: current_user.id)
  end

  def show
    @post = List.find(@post)
  end
  
  #UPDATE
  def edit 
  end
  
  def update
    @post.name = params[:name]
    @post.content = params[:content]
    @post.save
    redirect_to '/mentorrq/index'
  end
  
  
  #DELEATE
  
  def destory
    @delete = params[:id]
    @del = List.find(@delete)
    @del.destroy
    redirect_to "/mentorrq/index"
  end
  
  def levelup #admin only!!
    @numb = params[:id]
    mentor = Mentor.new
    mentor.user_id = @numb
    mentor.save
    redirect_to "/admin/mentorrq"
  end

private
  def set_post
    @post = List.find(params[:id])
  end

    
end
