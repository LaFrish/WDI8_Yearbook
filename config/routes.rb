Rails.application.routes.draw do
  root to: 'students#index'

  resources :yearbook
  resources :instructors
  resources :squads
  resources :students
  resources :codeys
end
