Rails.application.routes.draw do

  #관리자(어드민) 계정 관련 기능들
  get 'admin/index'
  get 'admin/mentorrq' #전체 멘토신청을 볼 수 있고 등업을 시켜줄수 있는 뷰

  #메인컨트롤러
  root 'main#bmain'
  get 'main' => 'main#main'
  get 'main/mentoring' 
  get 'main/execution' 
  get 'main/bmain' 
  get 'main/mypage' #내정보 이동
  post 'main/create'=> 'main#create' #내정보 프로필 수정

  devise_for :users, :controllers => { registrations: 'users/registrations' }


  #멘토신청게시판 (유저 / 어드민)
  get 'mentorrq/new'
  get 'mentorrq/create'
  get 'mentorrq/index' => 'mentorrq#index'
  get 'mentorrq/show/:id' => 'mentorrq#show'
  get 'mentorrq/edit/:id' => 'mentorrq#edit'
  get 'mentorrq/update/:id' => 'mentorrq#update'
  get 'mentorrq/destory/:id' => 'mentorrq#destroy'
  
  get 'mentorrq/levelup/:id' => 'mentorrq#levelup'#only admin으로!!


  #멘토신청게시판 댓글(왜 필요한건지..?)
  get 'mentoraw/make'
  get 'mentoraw/destroy/:a_id' => 'mentoraw#destroy'
  
  
  #공개처형
  get 'public/write'
  post 'public/create'
  get 'public/show/:id' => 'public#show'
  get 'public/index'
  get 'public/show'
  post 'public/:post_id/like' => 'public#like_toggle'
  get 'public/rank/:id'=> 'public#rank'
  
  #comment
  post '/comments' => 'comment#create'
  delete '/comments/:id' => 'comment#destory'


  #멘토링
  get 'mentoring/new'
  get 'mentoring/edit/:id' => 'mentoring#edit'
  post 'mentoring/create'
  get 'mentoring/show/:id' => 'mentoring#show'
  delete 'mentoring/:id' => 'mentoring#delete'
  post 'mentoring/update/:id' => 'mentoring#update'
  get 'mentoring/search'
  
  get 'main/sugang/:suup_id/:user_id' => 'main#sugang'

  # Q&A 게시판
  get 'qanda/show/:id' => 'qanda#show'
  get 'qanda/new'
  get 'qanda/edit/:id' => 'qanda#edit'
  post 'qanda/create'
  post 'qanda/update/:id' => 'qanda#update' 
  post 'qanda/destroy/:id' => 'qanda#destory'
  
  post 'qanda/a_create'
  post 'qanda/a_destroy/:id' => 'qanda#a_destroy'
  
  get 'qanda/index'
end
