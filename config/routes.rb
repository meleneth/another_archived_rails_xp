Rails.application.routes.draw do
  resources :flagged_for_reviews
  resources :comments
  resources :posts
  resources :authors
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
