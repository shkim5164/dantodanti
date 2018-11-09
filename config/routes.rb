Rails.application.routes.draw do

  #메인메뉴
  root 'main#bmain'

  get 'main' => 'main#main'

  get 'main/cards' #얘가 메인네브에서 '멘토링' 눌렀을 때 실행되는거

  get 'main/execution' #공개처형뷰로 이동
  
  get 'main/bmain' 
  
  get 'main/mypage'
  
  get 'main/design'
  
  get 'main/ranking' #얘 도대체 뭐하는앤지 모르겠음 뷰도 없고
  
  

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
