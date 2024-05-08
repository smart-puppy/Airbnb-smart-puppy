Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  
  
  resources :bikes do
    resources :bookings, only: [:new, :create]
  end

  get "up" => "rails/health#show", as: :rails_health_check

end