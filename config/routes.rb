Rails.application.routes.draw do
  devise_for :users
  root to: 'yearbook#index'

  resources :yearbook
  resources :instructors
  resources :squads
  resources :students
  resources :codeys
end
