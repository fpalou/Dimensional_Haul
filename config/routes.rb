Rails.application.routes.draw do
  get 'bookings/new'
  get 'bookings/show'
  root to: "pages#home"
  devise_for :users, controllers: { profiles: 'profiles' }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  resources :dimensions do
    resources :bookings, only: %i[new create]
  end
  resources :bookings, only: %i[show destroy]
  ## Custom routes for profile
  resource :profile, only: [:show]
end
