class MenuController < ApplicationController
  layout :admin_layout,:only=>[:bmain]
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
  
  def cards
  end
  
  def mypage
  end
end
