Rails.application.routes.draw do
  devise_for :superheros
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :superheros do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: :index do
    # resources :reviews, only [:index, :new, :create]
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
