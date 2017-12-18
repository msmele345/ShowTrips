Rails.application.routes.draw do

  resources :users, only: [:new, :create, :show]

  resources :concerts do
    resources :attendances, only: [:new, :create]
  end

  resources :concerts do
    resources :itineraries, only: [:new, :create, :show,:destroy]
  end

  resources :sessions, only: [:new, :create, :destroy]

    get '/login', to: 'sessions#new'
    post '/login', to: 'sessions#create'
    get '/logout', to: 'sessions#destroy'

    delete '/users/:user_id', to: "itineraries#destroy"

    post '/concerts/:concert_id', to: "attendances#create"

    root 'concerts#index'




end


##TODO
##Add styling for delete button
##add edit button
## style itinerary show

##AJAX??
##create partials showing int info
##Itinerary show? Where are these displayed othert than user profile?
##CSS