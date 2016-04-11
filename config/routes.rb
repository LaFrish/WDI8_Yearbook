Rails.application.routes.draw do
  root to: 'yearbook#index'

  resources :instructors do
    resources :squads do
      resources :students do
        resources :codeys
      end
    end
  end
end
