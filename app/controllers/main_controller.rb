class MainController < ApplicationController
  layout :admin_layout,:only => [:bmain, :design]
  before_action :authenticate_user!
  def main
    @allrecord = Suup.all
  end


  def ranking
  end

  def execution
    render :layout => 'execution'
  end
  
  def bmain
    render :layout => 'bmain'
  end
  
  def design
    render :layout => 'design'
  end
  
  #'멘토링' 메인페이지
  def cards
    @popsuup = Suup.all.limit(6)
    @suups = Suup.order(":created_at desc").page(params[:page]).per(9)
  end
  
  def mypage
    @suup_info = Suup.all.limit(3)
    render :layout => 'mypage'
  end
  

  def sugang
    @sinchung=Sinchung.new
    @sinchung.user_id=params[:user_id]
    @sinchung.suup_id=params[:suup_id]
    @sinchung.save
    
    redirect_to '/main/mentoring'
    
  end
  def create
    @user = User.find(params[:user])
    @user.image = params[:image]
    @user.save
    #redirect_back(fallback_location: root_path)

    redirect_to '/users/edit'

  end
end
