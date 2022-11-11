Rails.application.routes.draw do
  devise_for :users
  resources :flats do
    resources :viewings, only: [:new, :create]
  end

    # resources :viewings, only: [:show] do
    #   patch :accept
    #   patch :decline
    # end
  # Defines the root path route ("/")
  root to: 'pages#home'
  get '/requests' => 'pages#requests'
  resources :viewings, only: [:show, :index, :update, :edit, :destroy] do
    get :accept
    get :decline
  end
end
