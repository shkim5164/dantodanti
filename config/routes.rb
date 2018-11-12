Rails.application.routes.draw do

  #관리자(어드민) 계정 관련 기능들
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



  get 'mentorrq/index' => 'mentorrq#index'
  get 'mentorrq/write'
  get 'mentorrq/edit/:id' => 'mentorrq#edit'
  get 'mentorrq/delete'
  get 'mentorrq/create'
  
  get 'mentorrq/update/:id' => 'mentorrq#update'
  get 'mentorrq/show/:id' => 'mentorrq#show'
  get 'mentorrq/delete/:id' => 'mentorrq#delete'

  get 'mentoraw/make'
  get 'mentoraw/destroy/:a_id' => 'mentoraw#destroy'
  

  
  get 'public/write'
  post 'public/create'
  get 'public/show/:id' => 'public#show'
  get 'public/index'
  get 'public/show'
  
  post 'public/:post_id/like' => 'public#like_toggle'
  
  #comment
  post '/comments' => 'comment#create'
  delete '/comments/:id' => 'comment#destory'



  get 'mentorrq/levelup/:id' => 'mentorrq#levelup'

 
 
  get 'mentoring/new'
  get 'mentoring/edit/:id' => 'mentoring#edit'
  post 'mentoring/create'
  get 'mentoring/show/:id' => 'mentoring#show'
  delete 'mentoring/:id' => 'mentoring#delete'
  
  get 'mentoring/search'
  
  get 'main/sugang/:suup_id/:user_id' => 'main#sugang'

  get 'public/rank/:id'=> 'public#rank'

end
