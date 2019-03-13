# frozen_string_literal: true

Rails.application.routes.draw do
  # resources :scores, except: %i[new edit]
  # RESTful routes
  resources :examples, except: %i[new edit]
  # resources :scores, only: %i[index show update destroy]

  post '/scores' => 'scores#create'
  get '/scores' => 'scores#index'
  patch 'scores/:id' => 'scores#update'
  delete '/scores/:id' => 'scores#destroy'

  # post '/games' => 'games#create'
  # get '/games' => 'games#index'
  # patch 'games/:id' => 'games#update'
  # delete '/games/:id' => 'games#destroy'

  resources :games do
    end

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
end
