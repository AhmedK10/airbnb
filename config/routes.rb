Rails.application.routes.draw do
  
  devise_for :users
  root to: "pages#home"
  resources :properties, only: :index
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  # root "articles#index"
  resources :bookings, only: [] do 
    resources :reviews, only: [:new, :create]
  end
end
