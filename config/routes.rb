Rails.application.routes.draw do

  #메인메뉴
  root 'main#main'

  get 'main/main' => 'main#main'

  get 'main/cards' #얘가 메인네브에서 '멘토링' 눌렀을 때 실행되는거

  get 'main/ranking'

  get 'main/execution'
  
  get 'main/bmain'

  get 'main/mypage'
  
  get 'main/design'
  
  

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
  

  # root 'public#index'
  
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

  post 'main/create'=> 'main#create'
  
  get 'public/rank/:id'=> 'public#rank'

end
