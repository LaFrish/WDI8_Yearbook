Rails.application.routes.draw do
  root to: 'yearbook#index'

  resources :yearbook do
    resources :students
    resources :squads
    resources :instructors
    resources :codeys
  end
end
