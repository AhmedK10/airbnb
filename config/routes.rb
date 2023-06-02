Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :bookings, only: %i[] do
    resources :reviews, only: [:new, :create]
  end

  resources :properties, only: %i[index show new create] do
    resources :bookings, only: %i[index new create] 
  end
  resources :favorites, only: %i[index create]
end
