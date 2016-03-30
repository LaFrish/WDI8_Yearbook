Rails.application.routes.draw do
  root to: 'wdi#index'

  resources :wdis do
    resources :students
    resources :squads
    resources :instructors
    resources :codeys
    resources :schooldays
  end
end
