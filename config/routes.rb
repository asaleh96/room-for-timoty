Rails.application.routes.draw do
  devise_for :users

  # root "articles#index"

  resources :flats do
    resources :viewings, only: [:new, :create]
  end
  # resources :viewings

end
