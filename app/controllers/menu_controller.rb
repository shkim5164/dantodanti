class MenuController < ApplicationController
  layout :admin_layout,:only => [:bmain, :design, :cards]
  
  def main
  end

  def mentoring
  end

  def ranking
  end

  def execution
  end
  
  def bmain
    render :layout => 'bmain'
  end
  
  def design
    render :layout => 'design'
  end
  
  def cards
    render :layout => 'cards'
  end
  
  def mypage
  end
end
