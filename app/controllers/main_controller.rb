class MainController < ApplicationController
  layout :admin_layout,:only => [:bmain, :design]
  before_action :authenticate_user!

  def bmain
    render :layout => 'bmain'
  end

  def main
    @allrecord = Suup.all.limit(5)
  end
  
  def execution
    @allrecord = Blacklist.all
    render :layout => 'execution'
  end
  
  def design
    render :layout => 'design'
  end
  
  def cards #이게 멘토링
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
    # redirect_back(fallback_location: root_path)
    
    
  def ranking
  end
    
    redirect_to '/users/edit'
    
  end
end
