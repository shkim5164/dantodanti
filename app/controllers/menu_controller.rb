class MenuController < ApplicationController
  layout :admin_layout,:only => [:bmain, :design]
  
  def main
  end

  def mentoring
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
  
  def cards
    @popsuup = Suup.all.limit(5)
  end
  
  def mypage
  end
  
  def create
    @user = User.find(params[:user])
    @user.image = params[:image]
    @user.save
    #redirect_back(fallback_location: root_path)
    redirect_to '/users/edit'
  end
end
