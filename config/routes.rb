Rails.application.routes.draw do
  get 'favorites/index'
  get 'favorites/new'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :properties, only: %i[index show]
  resources :bookings, only: [] do
    resources :reviews, only: [:new, :create]
  end

  resources :favorites, only: %i[index]
end
