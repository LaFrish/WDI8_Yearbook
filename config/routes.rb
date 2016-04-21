Rails.application.routes.draw do
  devise_for :users
  root to: 'yearbook#index'



  resources :instructors
  # do
  #   resources :comments
  # end
  resources :students
  #  do
  #   resources :comments
  # end
  resources :yearbook
  resources :codeys
  resources :squads
  resources :comments
end
