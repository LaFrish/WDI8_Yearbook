Rails.application.routes.draw do
  devise_for :users
  root to: 'yearbook#index'
  get 'tags/:tag', to: 'photo#index', as: "tag"

  resources :wdiers do
    resources :posts
  end

  resources :photos
end
