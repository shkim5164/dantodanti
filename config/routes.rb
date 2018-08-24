Rails.application.routes.draw do

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
  
  get 'menu/main' => 'menu#main'
  get 'menu/mentoring' => 'menu#cards'
  get 'menu/execution' => 'public#index'
  get 'menu/bmain'
  get 'menu/mypage' => 'menu#mypage'
  
  root 'menu#main'

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

  get 'menu/mypage'
  
  get 'menu/cards'
  
  get 'menu/design'
  
  get 'mentorrq/levelup/:id' => 'mentorrq#levelup'

 
 
  get 'mentoring/new'
  get 'mentoring/edit/:id' => 'mentoring#edit'
  post 'mentoring/create'
  get 'mentoring/show/:id' => 'mentoring#show'
  delete 'mentoring/:id' => 'mentoring#delete'
  
  get 'mentoring/search'
  
  post 'menu/create'=> 'menu#create'
  
  get 'public/rank/:id'=> 'public#rank'
end
