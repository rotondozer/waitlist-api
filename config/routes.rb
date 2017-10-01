# frozen_string_literal: true
Rails.application.routes.draw do
  resources :tables_activities
  resources :tables
  resources :waiting_parties
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
