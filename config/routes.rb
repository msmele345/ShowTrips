Rails.application.routes.draw do

  resources :users, only: [:new, :create, :show]

  resources :concerts do
    resources :attendances, only: [:new, :create]
  end

  resources :sessions, only: [:new, :create, :destroy]

    get '/login', to: 'sessions#new'
    post '/login', to: 'sessions#create'
    get '/logout', to: 'sessions#destroy'

    post '/concerts/:concert_id', to: "attendances#create"

    root 'concerts#index'




end


##TODO
##pseduo out intineraries
##Develop user show

