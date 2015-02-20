Rails.application.routes.draw do

  root 'welcome#index'
  resources :users #, only:[:index, :show, :create]
  get '/signup' => 'users#new'
  

  resources :leagues do
    resources :picks
  	patch 'join', on: :member
  end
  


  get '/login'     => 'sessions#new'
  post '/login'    => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

end
