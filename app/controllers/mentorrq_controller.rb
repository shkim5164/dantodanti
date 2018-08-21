class MentorrqController < ApplicationController
  def index
    @allrecord = List.all #모델에 있는 모든 데이터 불러오기
    
    @posts = List.order(:id).page(params[:page]).per(10)
  end
  
  def write
    
  end
  
  def edit
    @numb = params[:id]
    @findone = List.find(@numb)
    
  
  
  
  end
  
  def update
    @numb = params[:id]
    @record = List.find(@numb)
    @record.name = params[:name]
    @record.content = params[:content]
    @record.save
    redirect_to '/mentorrq/index'
  end
  
  def create
    @newrecord = List.new # 대문자로 적어야 모델이라고 인식
    @newrecord.name = params[:name] #name(앞) 항목에는 파라미터로 받아온 name 을 저장하고
    @newrecord.content = params[:content]  #content 항목에는 파라미터로 받아온 content를 저장
    @newrecord.save # 안해주면 날라감
    
    redirect_to "/mentorrq/show/#{@newrecord.id}" # 저장하면 show로 바로 넘어감

  end
  
  
  def show
   @show1 = params[:id]
   
   @findone = List.find(@show1)
   @s_name = @findone.name
   @s_content = @findone.content
   
   @findtwo = Answer.where(question_id: @show1)

  end
  
  def delete
    @delete = params[:id]
    @del = List.find(@delete)
    @del.destroy
    redirect_to "/mentorrq/index"
  end
  
  
    
end
