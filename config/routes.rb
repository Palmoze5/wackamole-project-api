# frozen_string_literal: true

Rails.application.routes.draw do
  resources :jokes
  # RESTful routes
  resources :examples, except: %i[new edit]
  resources :jokes, only: %i[index show update destroy]
  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
end
