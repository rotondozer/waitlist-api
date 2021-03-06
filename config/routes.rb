# frozen_string_literal: true
Rails.application.routes.draw do
  get '/:user_id/tables_activities_all_occupied' => 'tables_activities#index_occupied'
  get '/:user_id/tables_activities_all_available' => 'tables_activities#index_available'
  get '/:user_id/table_activity/:table_number' => 'tables_activities#show_table_activity'
  get '/:user_id/tables/:party_size/match' => 'tables#match_tables_to_party_size'
  # resources :parties
  # resources :tables_activities
  # resources :tables
  # resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
  resources :users, shallow: true do
    resources :parties
    resources :tables
    resources :tables_activities
  end
end
