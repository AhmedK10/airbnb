Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"


  resources :properties, only: %i[index show] do
    resources :bookings, only: %i[index new create] do
      resources :reviews, only: [:new, :create]
    end
  end
end
