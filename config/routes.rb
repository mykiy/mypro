Rails.application.routes.draw do
 
  get 'attaches/index'

  get 'attaches/new'

  get 'attaches/create'

  get 'attaches/destroy'

  resources :posts
  root to:'posts#index'
  get 'newpost' =>'posts#new'
  get 'post'=>'posts#show'


  get 'signup'  => 'users#new' 
  delete 'logout' => 'sessions#destroy'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  resources :users
  
  resources :attaches, only: [:index, :new, :create, :destroy]
  get 'attaches_new' => 'attaches#new'
  get 'attaches_index'=>'attaches_index'

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end