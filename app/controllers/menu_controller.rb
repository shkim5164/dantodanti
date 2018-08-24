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
    @popsuup = Suup.all
  end
  
  def mypage
  end
end
