Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :superheros do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:index, :destroy]
  # resources :reviews, only [:index, :new, :create]
# Defines the root path route ("/")
  # root "articles#index"
end
