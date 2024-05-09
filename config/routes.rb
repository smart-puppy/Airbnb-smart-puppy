Rails.application.routes.draw do
  devise_for :users

  # Health check route
  get '/up', to: 'rails/health#show', as: :rails_health_check

  # Home page route
  get '/home', to: 'pages#home', as: :home
  get '/bikes', to: 'pages#bikes', as: :bikes

  # Bikes resource with nested bookings
  resources :bikes do
    resources :bookings, only: [:new, :create]
  end

  # Root route
  root 'pages#home'
end
