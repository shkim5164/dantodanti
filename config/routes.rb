Rails.application.routes.draw do

  devise_for :users
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
  get 'menu/execution'
  get 'menu/bmain'
  get 'menu/mypage' => 'menu#mypage'
  
  root 'menu#main'

  # root 'public#index'
  
  get 'public/write'
  post 'public/create'
  get 'public/show/:id' => 'public#show'
  get 'public/index'
  get 'public/show'
  
  #comment
  post '/comments' => 'comment#create'
  delete '/comments/:id' => 'comment#destory'
end
