Rails.application.routes.draw do
  devise_for :users
<<<<<<< HEAD


=======
  # Defines the root path route ("/")
>>>>>>> 1f02a720e26cb2aea4931958c51c17e0dc2dad5f
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  resources :bikes do
    resources :bookings, only: [:new, :create]
  end

<<<<<<< HEAD
  # Defines the root path route ("/")
  root "posts#index"

=======
  root to: "pages#home"
>>>>>>> 1f02a720e26cb2aea4931958c51c17e0dc2dad5f
end
