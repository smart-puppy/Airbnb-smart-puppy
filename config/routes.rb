Rails.application.routes.draw do
  devise_for :users

  # Health check route
  get '/up', to: 'rails/health#show', as: :rails_health_check

  # Bikes resource with nested bookings
  resources :bikes do
    resources :bookings, only: [:new, :create]
  end

  get 'dashboard', to: 'pages#dashboard', as: :dashboard

  # Root route
  root 'pages#home'
end
