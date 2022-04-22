Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # devise_for :users,
  
  # Defines the root path route ("/")
  # root "articles#index"
  devise_for :users,
            defaults: { format: :json }
  
  namespace :api do
    resources :posts
    resources :reactions, only: [:create]
  end
end
