Rails.application.routes.draw do
  devise_for :users
  resources :flats do
    resources :viewings, only: [:new, :create]
  end
  # resources :viewings

  # Defines the root path route ("/")
  root to: 'pages#home'
  resources :flats
  resources :viewings
end
