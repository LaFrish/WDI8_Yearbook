Rails.application.routes.draw do
  root to: 'wdi8#index'

  resources :wdi8 do
    resources :students
    resources :squads
    resources :instructors
    resources :codeys
    resources :schooldays
  end
end
