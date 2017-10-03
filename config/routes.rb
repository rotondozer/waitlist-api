# frozen_string_literal: true
Rails.application.routes.draw do
  get '/tables_activities_all_occupied' => 'tables_activities#index_occupied'
  get '/tables_activities_all_available' => 'tables_activities#index_available'
  resources :parties
  # resources :tables_activities
  resources :tables
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
