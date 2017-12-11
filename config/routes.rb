Rails.application.routes.draw do

  resources :user, only: [:new, :create, :show]

  resources :concerts do
    resources :attendances, only: [:new, :create]
  end


    get '/logout', to: 'sessions#destroy'

    get '/login', to: 'sessions#new'
    post '/login', to: 'sessions#create'
    get '/logout', to: 'sessions#destroy'

    root 'concerts#index'


end
