Rails.application.routes.draw do

  root 'users#index'
  resources :users, only:[:index, :show, :create]
  get '/signup' => 'users#new'

  namespace :api, defaults: {format: :json} do 
    resources :picks
    resources :leagues
  end


  get '/login'     => 'sessions#new'
  post '/login'    => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

end
