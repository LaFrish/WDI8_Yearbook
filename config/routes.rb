Rails.application.routes.draw do
  devise_for :users
  root to: 'yearbook#index'
  get 'tags/:tag', to: 'photo#index', as: "tag"


  resources :instructors do
    resources :comments
  end

  resources :students do
    resources :comments
  end

  resources :photos
  resources :codeys
  resources :squads
end
