# frozen_string_literal: true
Rails.application.routes.draw do
  resources :parties
  resources :tables_activities
  get '/tables_activities/currently_occupied' => 'tables_activities#index_occupied'
  resources :tables
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
