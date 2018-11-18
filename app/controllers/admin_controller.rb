class AdminController < ApplicationController
  def mentorrq 
    @allrecord = List.all #모델에 있는 모든 데이터 불러오기
    @d = Mentor.first #이거 수정해야하지않나
    @posts = List.order(:id).page(params[:page]).per(10)
  end
end
