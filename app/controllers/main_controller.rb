class MainController < ApplicationController
  before_action :authenticate_user!

  def bmain
    render layout: "bmain"
  end

  def main
    @allrecord = Suup.all.limit(5)
  end
  
  def execution
    @allrecord = Blacklist.all
    render layout: "execution"
  end
  
  def mentoring
    @popsuup = Suup.all.limit(10)
    @suups = Suup.order(created_at: :desc).page(params[:page]).per(9)
  end
  
  def mypage
    @suup_info = Suup.where(mentor_id: current_user.id)
    
  end
  


  def sugang
    @sinchung=Sinchung.new
    @sinchung.user_id=params[:user_id]
    @sinchung.suup_id=params[:suup_id]
    @sinchung.save
    
    redirect_to '/main/mentoring'
    
  end

  def create #내정보에서 프로필사진 수정
    @user = User.find(params[:user])
    @user.image = params[:image]
    @user.save
    # redirect_back(fallback_location: root_path)
    
    redirect_to '/users/edit'
  end
end
