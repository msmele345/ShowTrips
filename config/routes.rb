Rails.application.routes.draw do

  resources :users, only: [:new, :create, :show]

  resources :concerts do
    resources :attendances, only: [:new, :create]
  end

  resources :concerts do
    resources :itineraries, only: [:new, :create, :show,:destroy]
  end

  resources :itineraries

  resources :sessions, only: [:new, :create, :destroy]

    get '/login', to: 'sessions#new'
    post '/login', to: 'sessions#create'
    get '/logout', to: 'sessions#destroy'

    delete '/users/:user_id', to: "itineraries#destroy"
    post '/users/:user_id', to: "itineraries#update"


    post '/concerts/:concert_id', to: "attendances#create"

    root 'concerts#index'




end


##TODO
##PROTECT ROUTES ON EDIT AND DELETE FROM INT SHOW AND USER SHOW !@!!!!!
##Fix edit form so that it presents current values
##Fix itineraries show from a style standpoint
